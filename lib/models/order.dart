
import 'package:biteline/models/food.dart';

class Order {

  final int oid;
  final List<Food> foods;
  final DateTime orderTime;
  final String status;
  late double total;

  Order({
    required this.oid,
    required this.foods,
    required this.orderTime,
    this.status = 'Pending',
    this.total = 0.0,
  }) {
    total = foods.fold(0, (total, food) => total + (food.price * food.quantity));
  }

  Map<String, dynamic> toJson() {
    return {
      'oid': oid,
      'foods': foods.map((food) => food.toJson()).toList(),
      'orderTime': orderTime.toIso8601String(), // Convert DateTime to ISO String
      'status': status,
      'total': total,
    };
  }

  factory Order.fromJson(Map<String, dynamic> data) {
    return Order(
      oid: data['oid'],
      foods: (data['foods'] as List).map((foodData) => Food.fromJson(foodData)).toList(),
      orderTime: DateTime.parse(data['orderTime']), 
      status: data['status'],
      total: data['total'],
    );
  }

}