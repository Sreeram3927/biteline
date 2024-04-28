import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/quantity_control_cart.dart';
import 'package:flutter/material.dart';

class CartFoodCard extends StatelessWidget {
  final Food food;
  final int quantity;
  final void Function(int) changeQuantity;
  const CartFoodCard({
    super.key, 
    required this.food, 
    required this.quantity,
    required this.changeQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 4,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Image.network(
                food.imageUrl,
                height: double.infinity,
                width: 80,
                fit: BoxFit.scaleDown,
              ),
          
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    food.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '₹${food.price.toStringAsFixed(2)}', 
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              
              QuantityControlCart(
                currentQuantity: quantity,
                onQuantityChange: changeQuantity,
              ),
                    
            ],
          ),
        ),
      ),
    );
  }
}
