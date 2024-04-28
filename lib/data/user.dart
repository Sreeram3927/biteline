
import 'dart:convert';

import 'package:biteline/models/food.dart';
import 'package:biteline/models/order.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User {
  
  List<Food> get getFavorites => favoriteFoods;
  static List<Food> favoriteFoods = [];
  void toggleFavorite(Food food) {
    if (favoriteFoods.contains(food)) {
      favoriteFoods.remove(food);
    } else {
      favoriteFoods.add(food);
    }
    storeFavFoods();
  }
  bool isFavorite(Food food) {
    for (Food i in favoriteFoods) {
      if (i.id == food.id) return true;
    }
    return false;
  }
  void loadFavFoods() {
    final data = _prefs.getStringList('fav_foods') ?? [];
    for (var i in data) {
      Food food = Food.fromJson(jsonDecode(i));
      food.isFavorite = true;
      favoriteFoods.add(food);
    }
  }
  void storeFavFoods() async {
    final List<String> encodedFavs = (favoriteFoods.map((food) => jsonEncode(food.toJson()))).toList();
    await _prefs.setStringList('fav_foods', encodedFavs);
  }

  List<Food> get getCart => cartFoods;
  static List<Food> cartFoods = [];
  void addToCart(Food food) {
    if (cartFoods.contains(food)) {
      cartFoods[cartFoods.indexOf(food)].quantity++;
    } else {
      cartFoods.add(food);
    }
    storeCartFoods();
  }
  void removeFromCart(Food food) {
    cartFoods.remove(food);
    storeCartFoods();
  }
  void changeQuantity(Food food, int newQuantity) {
    if (newQuantity > 0) {
      cartFoods[cartFoods.indexOf(food)].quantity = newQuantity;
    } else {
      removeFromCart(food);
    }
    storeCartFoods();
  }
  void clearCart() {
    cartFoods.clear();
    storeCartFoods();
  }
  void loadCartFoods() {
    final data = _prefs.getStringList('cart_foods') ?? [];
    for (var i in data) {
      cartFoods.add(Food.fromJson(jsonDecode(i)));
    }
  }
  void storeCartFoods() async {
    final List<String> encodedFavs = (cartFoods.map((food) => jsonEncode(food.toJson()))).toList();
    await _prefs.setStringList('cart_foods', encodedFavs);
  }

  List<Order> get getOrders => orders;
  static List<Order> orders = [];
  void addOrder(List<Food> foodOrder) {
    orders.add(Order(
      oid: orders.length + 1,
      foods: foodOrder,
      orderTime: DateTime.now(),
    ));
    storeOrders();
    clearCart();
  }
  void loadOrders() {
    final data = _prefs.getStringList('orders') ?? [];
    for (var i in data) {
      orders.add(Order.fromJson(jsonDecode(i)));
    }
  }
  void storeOrders() async {
    final List<String> encodedFavs = (orders.map((order) => jsonEncode(order.toJson()))).toList();
    await _prefs.setStringList('orders', encodedFavs);
  }


  static late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    loadFavFoods();
    loadCartFoods();
    loadOrders();
  }

}