
import 'package:biteline/models/food.dart';

class Order {

  final int oid;
  final List<Food> foods;
  final DateTime orderTime;
  final String status = 'Pending';
  late double total;

  Order({
    required this.oid,
    required this.foods,
    required this.orderTime,
  }) {
    total = foods.fold(0, (total, food) => total + (food.price * food.quantity));
  }
}