import 'package:flutter/material.dart';
import 'package:biteline/models/food.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 160,
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
    );
  }
}