import 'package:biteline/data/user.dart';
import 'package:biteline/models/food.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AboutFoodPage extends StatefulWidget {
  final Food food;
  const AboutFoodPage({super.key, required this.food});

  @override
  State<AboutFoodPage> createState() => _AboutFoodPageState();
}

class _AboutFoodPageState extends State<AboutFoodPage> {

  static final User _user = User();
  late Food _food;

  @override
  void initState() {
    super.initState();
    _food = widget.food;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          child: AppBar(
            leading: Hero(
              tag: 'ios_back_button',
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Hero(
              tag: 'foodType-${widget.food.type}',
              child: Text(
                widget.food.type,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(
                  widget.food.isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                  color: widget.food.isFavorite ? Theme.of(context).primaryColor : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    widget.food.toggleFavorite();
                  });
                },
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [

          Hero(
            tag: '${widget.food.id}_image',
            child: Image.network(
              widget.food.imageUrl,
              width: 250,
              height: 200,
              fit: BoxFit.scaleDown,
            ),
          ),

          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.food.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  '₹${widget.food.price.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.food.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 32.0, left: 64.0, right: 64.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_food.quantity > 1) {
                        _food.quantity -= 1;
                      }
                    });
                  },
                  child: const Icon(Icons.remove, size: 20.0,),
                ),
                
                Text(
                  _food.quantity.toString(), 
                  style: Theme.of(context).textTheme.titleSmall,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                  ),
                  onPressed: () {
                    setState(() {
                      _food.quantity += 1;
                    });
                  },
                  child: const Icon(Icons.add, size: 20.0,),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                _user.addToCart(widget.food);
                Navigator.pop(context);
                Fluttertoast.showToast(
                  msg: 'Added to Cart',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.SNACKBAR,
                  backgroundColor: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: Text(
                'Add to Cart',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: const Color(0xFFf2f2f2),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}