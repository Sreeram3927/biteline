import 'package:biteline/pages/cart.dart';
import 'package:biteline/pages/favourites.dart';
import 'package:biteline/pages/home.dart';
import 'package:biteline/pages/orders.dart';
import 'package:biteline/pages/profile.dart';
import 'package:biteline/pages/search.dart';
import 'package:flutter/material.dart';

class PageManager extends StatefulWidget {
  const PageManager({super.key});

  @override
  State<PageManager> createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {

  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _changePage(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          child: AppBar(
            leading: Hero(
              tag: 'search_button',
              child: IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 300),
                        pageBuilder: (_, __, ___) => const SearchPage(),
                        transitionsBuilder: (_, animation, __, child) {
                          return SlideTransition(
                            position: Tween(begin: const Offset(-1.0, 0.0), end: Offset.zero).animate(animation),
                            child: child,
                          );
                        },
                      ),
                    );
                },
              ),
            ),
            title: Text(
              'Bite Line',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (_, __, ___) => const CartPage(),
                      transitionsBuilder: (_, animation, __, child) {
                        return SlideTransition(
                          position: Tween(begin: const Offset(0.0, 1.0), end: Offset.zero).animate(animation),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      body: PageView(
        controller: _pageController,
        // physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: const [
          HomePage(),
          FavouritesPage(),
          OrdersPage(),
          ProfilePage(),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _changePage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}