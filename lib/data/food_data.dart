import 'package:biteline/models/food.dart';

class FoodData {

  FoodData() {
    
    generateDummyData();

  }

  static List<String> foodTypes = [
    'Breakfast',
    'Lunch',
    'Snacks',
    'Chat',
    'Fresh Juice',
    'Beverages',
    'Ice Creams',
    'Bakery',
    'Fast Food',
  ];

  Map<String, List<Food>> get getFoods => foods;
  static Map<String, List<Food>> foods = {
    'Breakfast': [
      
    ],
    'Lunch': [
      
    ],
    'Snacks': [
      
    ],
    'Chat': [
      
    ],
    'Fresh Juice': [
      
    ],
    'Beverages': [
      
    ],
    'Ice Creams': [
      
    ],
    'Bakery': [
      
    ],
    'Fast Food': [
      
    ],
  };

  void generateDummyData() {
    for (int j = 0; j < foodTypes.length; j++) {
      for (int i = 0; i < 10; i++) {
        Food foodItem = Food(
          id: (10 * (j + 1)) + (i + 1),
          name: '${foodTypes[j]} Food $i',
          imageUrl: 'https://www.pngplay.com/wp-content/uploads/9/Meal-Free-Picture-PNG.png',
          type: foodTypes[j],
          price: 9.99,
          rating: 4.0,
          description: 'This is a dummy ${foodTypes[j]} food item description.',
        );
        foods[foodTypes[j]]!.add(foodItem);
      }
    }
  }

  // Map<String, List<Food>> getDummyData() {
  //   Map<String, List<Food>> data = {
  //     'Breakfast': [],
  //     'Lunch': [],
  //     'Snacks': [],
  //     'Chat': [],
  //     'Fresh Juice': [],
  //     'Beverages': [],
  //     'Ice Creams': [],
  //     'Bakery': [],
  //     'Fast Food': [],
  //   };
  //   for (int j = 0; j < foodTypes.length; j++) {
  //     for (int i = 0; i < 10; i++) {
  //       Food foodItem = Food(
  //         id: (10 * (j + 1)) + (i + 1),
  //         name: '${foodTypes[j]} Food $i',
  //         imageUrl: 'https://www.pngplay.com/wp-content/uploads/9/Meal-Free-Picture-PNG.png',
  //         type: foodTypes[j],
  //         price: 9.99,
  //         rating: 4.0,
  //         description: 'This is a dummy ${foodTypes[j]} food item description.',
  //       );
  //       data[foodTypes[j]]!.add(foodItem);
  //     }
  //   }
  //   return data;
  // }
}