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

  void _changeQuantity(Food food, int newQuantity) {
    print('_changeQuantity, cart $newQuantity');
    setState(() {
      _user.changeQuantity(food, newQuantity);
      _cart = List.from(_user.getCart);
    });
    print('_changeQuantity, food ${food.quantity}');
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

      body: Padding(
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
          onPressed: () {
            // Navigator.pop(context);
            // print(_cart);
            for (var food in _cart) {
              print('${food.name} x ${food.quantity}');
            }
            for (var food in _user.getCart) {
              print('_user ${food.name} x ${food.quantity}');
            }
          },
          child: Text(
            'Checkout',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: const Color(0xFFf2f2f2),
            ),
          ),
        ),
      ),

    );
  }
}