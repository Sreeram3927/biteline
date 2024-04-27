
import 'package:biteline/models/food.dart';

class User {
  
  List<Food> get getFavorites => favoriteFoods;
  static List<Food> favoriteFoods = [];
  void toggleFavorite(Food food) {
    if (favoriteFoods.contains(food)) {
      favoriteFoods.remove(food);
    } else {
      favoriteFoods.add(food);
    }
  }
  bool isFavorite(Food food) {
    return favoriteFoods.contains(food);
  }

  List<Food> get getCart => cartFoods;
  static List<Food> cartFoods = [];
  void addToCart(Food food) {
    cartFoods.add(food);
  }
  void removeFromCart(Food food) {
    cartFoods.remove(food);
  }

}