import 'package:biteline/data/user.dart';
import 'package:biteline/models/order.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {

  static final User _user = User();
  late List<Order> _orders;

  @override
  void initState() {
    super.initState();
    _orders = _user.getOrders;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      child: ListView.builder(
        itemCount: _orders.length,
        itemBuilder: (context, index) {
          final order = _orders[index];
          return Card(
            child: ListTile(

              leading: CircleAvatar(
                child: Text(
                  '#${order.oid.toString()}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),

              title: Text(
                'Ordered on ${order.orderTime.toString().substring(0, 16)}',
                style: Theme.of(context).textTheme.titleSmall,
              ),

              subtitle: Text(
                'Status: ${order.status}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              trailing: Text(
                '₹${order.total.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              
            ),
          );
        },
      ),
    );
  }
}