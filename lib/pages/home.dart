import 'package:biteline/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(54.6, 74, 0, 0),
        child: Column(
          children: [
            // AppBar(
            //   leading: const Icon(Icons.menu),
            //   title: Text(
            //     'Home Page',
            //     style: Theme.of(context).textTheme.headlineSmall,
            //   ),
            //   toolbarHeight: 16.0,
            // ),
            TopBar(
              title: 'Bite Line',
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              trailing: IconButton(
                icon: const Icon(Icons.shopping_cart_rounded),
                onPressed: () {},
              )
            ),
            Expanded(
              child: Center(
                child: Text('Hello World!'),
              ),
            ),
          ],
        ),
      )
    );
  }
}