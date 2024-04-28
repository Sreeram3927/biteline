import 'package:biteline/pages/about_food.dart';
import 'package:flutter/material.dart';
import 'package:biteline/models/food.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 500),
              pageBuilder: (_, __, ___) => AboutFoodPage(
                food: food,
              ),
              transitionsBuilder: (_, animation, __, child) {
                return SlideTransition(
                  position: Tween(begin: Offset(1.0, 0.0), end: Offset.zero).animate(animation),
                  child: child,
                );
              },
            ),
          );
        },
        child: Card(
          elevation: 4,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Hero(
                  tag: '${food.id}_image',
                  child: Image.network(
                    food.imageUrl,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.scaleDown,
                  ),
                ),
            
                Text(
                  food.name,
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                
                Text(
                  '₹${food.price.toStringAsFixed(2)}', 
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
