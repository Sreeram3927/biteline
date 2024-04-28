import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/food_card.dart';
import 'package:flutter/material.dart';

class AllFoodsPage extends StatelessWidget {
  final String title;
  final List<Food> foods;
  const AllFoodsPage({
    super.key,
    required this.title,
    required this.foods,
  });

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
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            centerTitle: true,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          children: List.generate(foods.length, (index) => FoodCard(food: foods[index])),
        ),
      ),
    );
  }
}