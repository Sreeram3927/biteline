
import 'package:biteline/models/food.dart';
import 'package:biteline/models/order.dart';

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
    if (cartFoods.contains(food)) {
      cartFoods[cartFoods.indexOf(food)].quantity++;
    } else {
      cartFoods.add(food);
    }
  }
  void removeFromCart(Food food) {
    cartFoods.remove(food);
  }
  void changeQuantity(Food food, int newQuantity) {
    if (newQuantity > 0) {
      cartFoods[cartFoods.indexOf(food)].quantity = newQuantity;
    } else {
      removeFromCart(food);
    }
  }
  void clearCart() {
    cartFoods.clear();
  }

  List<Order> get getOrders => orders;
  static List<Order> orders = [];
  void addOrder(List<Food> foodOrder) {
    orders.add(Order(
      oid: orders.length,
      foods: foodOrder,
      orderTime: DateTime.now(),
    ));
    clearCart();
  }
}