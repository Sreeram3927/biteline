import 'package:biteline/data/food_data.dart';
import 'package:biteline/data/user.dart';
import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/food_card.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  static final User _user = User();
  final List<Food> favorites = _user.getFavorites;

  final List<Food> _allFoods = FoodData.getAllFoods;
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  List<Food> _filteredFoods = [];

  @override
  void initState() {
    super.initState();
    _filteredFoods = _allFoods;
  }

  void _filterFoods(String searchTerm) {
    if (searchTerm.isEmpty) {
        _isSearching = false;
    } else {
      _isSearching = true;
    }
    setState(() {
      _filteredFoods = _allFoods.where((food) => food.name.toLowerCase().contains(searchTerm.toLowerCase())).toList();
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      child: Column(
        children: [
          
          SearchBar(
            controller: _searchController,
            onChanged: (searchTerm) => _filterFoods(searchTerm),
            hintText: 'Search...',
            trailing: [
              _isSearching ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  _searchController.clear();
                  _filterFoods('');
                  setState(() {
                    _isSearching = false;
                  });
                },
              ) : IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    _isSearching = true;
                  });
                },
              ),
            ],
            textStyle: MaterialStateProperty.all(Theme.of(context).textTheme.bodyMedium),
            elevation: MaterialStateProperty.all(1.0),
            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
          ),

          const SizedBox(height: 20.0),

          ..._isSearching ? [] : [
            Text(
            'Favorites',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20.0),
          ],

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              children: _isSearching 
                ? List.generate(_filteredFoods.length, (index) => FoodCard(food: _filteredFoods[index]))
                : List.generate(favorites.length, (index) => FoodCard(food: favorites[index]))
              ,
            ),
          ),
        ],
      ),
    );
  }
}
