import 'package:biteline/models/food.dart';
import 'package:biteline/pages/all_foods.dart';
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
            Hero(
              tag: 'foodType-$foodType',
              child: Text(
                foodType,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            foods.length < 5 ? const SizedBox.shrink() : TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 300),
                    pageBuilder: (_, __, ___) => AllFoodsPage(
                      title: foodType,
                      foods: foods,
                    ),
                    transitionsBuilder: (_, animation, __, child) {
                      return SlideTransition(
                        position: Tween(begin: const Offset(0.0, 1.0), end: Offset.zero).animate(animation),
                        child: child,
                      );
                    },
                  ),
                );
              },
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
            itemCount: foods.length < 5 ? foods.length : 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 16),
                child: FoodCard(food: foods[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}