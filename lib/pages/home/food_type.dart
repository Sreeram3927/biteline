import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FoodType extends StatelessWidget {
  final String foodType;
  final List<Food> foods;
  const FoodType({
    super.key,
    required this.foodType,
    required this.foods,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              foodType,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return FoodCard(food: foods[index]);
            },
          ),
        ),
      ],
    );
  }
}