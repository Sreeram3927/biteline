import 'package:biteline/pages/about_food/about_food.dart';
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
            MaterialPageRoute(
              builder: (context) => AboutFoodPage(food: food),
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
                
                Image.network(
                  food.imageUrl,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.scaleDown,
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
