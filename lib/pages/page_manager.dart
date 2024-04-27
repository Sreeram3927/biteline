import 'package:biteline/pages/home/home.dart';
import 'package:biteline/pages/search/search.dart';
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
            leading: IconButton(
              icon: Image.asset('assets/images/menu_icon.png'),
              onPressed: () {},
            ),
            title: Text(
              'Bite Line',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_rounded),
                onPressed: () {},
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
          SearchPage(),
          Placeholder(),
          Placeholder(),
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
            icon: Icon(Icons.search_rounded),
            label: 'Search',
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