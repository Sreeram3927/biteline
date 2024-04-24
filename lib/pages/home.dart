import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bite Line', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Center(
        child: Text('Hello World!'),
      )
    );
  }
}