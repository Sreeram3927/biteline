import 'package:biteline/data/food_data.dart';
import 'package:biteline/models/food.dart';
import 'package:biteline/pages/home/food_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static final _foodData = FoodData();
  final Map<String, List<Food>> _foods = _foodData.getFoods; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      child: ListView.builder(
        itemCount: _foods.length,
        itemBuilder: (context, index) {
          final String key = _foods.keys.elementAt(index);
          return FoodType(
            foodType: key,
            foods: _foods[key] ?? [],
          );
        },
      ),
    );
  }
}