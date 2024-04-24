import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String title;
  final IconButton leading;
  final IconButton? trailing;
  const TopBar({
    super.key,
    required this.title,
    required this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          leading,

          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          trailing ?? const SizedBox(width: 24.0),
          
        ],
      ),
    );
  }
}