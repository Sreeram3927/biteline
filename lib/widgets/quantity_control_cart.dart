import 'package:flutter/material.dart';

class QuantityControlCart extends StatefulWidget {
  final int currentQuantity;
  final void Function(int) onQuantityChange;
  const QuantityControlCart({
    super.key,
    required this.currentQuantity,
    required this.onQuantityChange,
  });

  @override
  State<QuantityControlCart> createState() => _QuantityControlCartState();
}

class _QuantityControlCartState extends State<QuantityControlCart> {

  late int _quantity;

  void _updateQuantity(int newQuantity) {
    widget.onQuantityChange(newQuantity);
    setState(() {
      _quantity = newQuantity;
    });
  }

  @override
  void initState() {
    super.initState();
    _quantity = widget.currentQuantity;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SizedBox(
            height: 20,
            width: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(0),
              ),
              onPressed: () {
                _updateQuantity(_quantity + 1);
              },
              child: const Icon(Icons.add, size: 20.0,),
            ),
          ),
          
          Text(
            _quantity.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),

          SizedBox(
            height: 20,
            width: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(0),
              ),
              onPressed: () {
                _updateQuantity(_quantity - 1);
              },
              child: const Icon(Icons.remove, size: 20.0,),
            ),
          ),
        ],
      ),
    );
  }
}