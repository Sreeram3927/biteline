import 'package:biteline/data/user.dart';
import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/cart_food_card.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  static final User _user = User();
  late List<Food> _cart;
  String _paymentStatus = 'Pending';

  void _changeQuantity(Food food, int newQuantity) {
    setState(() {
      _user.changeQuantity(food, newQuantity);
      _cart = List.from(_user.getCart);
    });
  }

  String _getTotal() {
    double total = 0.0;
    for (final food in _cart) {
      total += food.price * food.quantity;
    }
    return total.toStringAsFixed(2);
  }

  @override
  void initState() {
    super.initState();
    _cart = List.from(_user.getCart);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Cart',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            centerTitle: true,
          ),
        ),
      ),

      body: _cart.isEmpty ? _cardEmpty() : Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
        child: ListView.builder(
          itemCount: _cart.length,
          itemBuilder: (context, index) {
            final Food food = _cart[index];
            return CartFoodCard(
              food: food,
              quantity: food.quantity,
              changeQuantity: (newQuantity) => _changeQuantity(food, newQuantity),
            );
          },
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 32.0, left: 64.0, right: 64.0),
        child: ElevatedButton(
          onPressed: () async {
            // if (_cart.isNotEmpty) {
            //   _user.addOrder(_cart);
            // }
            // Navigator.pop(context);
            if (_cart.isNotEmpty) {
              // setState(() {
              //   _paymentStatus = 'Processing';
              // });
              _paymentStatus = await showModalBottomSheet(
                isDismissible: false,
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return Container(
                        height: 200.0,
                        color: Colors.white,
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Test Payment',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              'Processing Payment...',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'failed');
                                  },
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(Colors.white),
                                  ),
                                  child: const Text('Deny'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'success');
                                  },
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(Colors.white),
                                  ),
                                  child: const Text('Approve'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
              
              if (_paymentStatus == 'success') {
                _user.addOrder(_cart);
                _paymentSuccessful();
              } else {
                _paymentFailed();
              }

            } else {
              Navigator.pop(context);
            }
          },
          child: Text(
            _cart.isEmpty ? 'Add Foods to Cart' : 'Place Order (₹${_getTotal()})',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: const Color(0xFFf2f2f2),
            ),
          ),
        ),
      ),

    );
  }

  Widget _cardEmpty() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            size: 200.0,
            color: Colors.grey,
          ),
          const SizedBox(height: 16.0),
          Text(
            'Your cart is empty',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          Text(
            'Add foods to your cart to see them here.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void _paymentSuccessful() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Payment Successful'),
          content: const Text('Your order has been placed successfully. Check your orders page for stauts.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _paymentFailed() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Payment Failed'),
          content: const Text('Your order could not be placed. Please try again later.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}