import 'package:biteline/data/food_data.dart';
import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/food_card.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final FocusNode _searchFocus = FocusNode();

  final List<Food> _allFoods = FoodData.getAllFoods;
  final TextEditingController _searchController = TextEditingController();
  List<Food> _filteredFoods = [];

  void _filterFoods(String searchTerm) {
    setState(() {
      _filteredFoods = _allFoods.where((food) => food.name.toLowerCase().contains(searchTerm.toLowerCase())).toList();
    }); 
  }

  @override
  void initState() {
    super.initState();
    _filteredFoods = _allFoods;
  }

@override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      child: Column(
        children: [
          
          SearchBar(
            controller: _searchController,
            focusNode: _searchFocus,
            onChanged: (searchTerm) => _filterFoods(searchTerm),
            hintText: 'Search...',
            trailing: [
              IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {
                  _searchFocus.unfocus();
                },
              ),
            
            ],
            textStyle: MaterialStateProperty.all(Theme.of(context).textTheme.bodyMedium),
            elevation: MaterialStateProperty.all(1.0),
            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
          ),

          const SizedBox(height: 20.0),

          _filteredFoods.isEmpty ? _noResults() : Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              children: List.generate(_filteredFoods.length, (index) => FoodCard(food: _filteredFoods[index])),
            ),
          ),
        ],
      ),
    );
  }

  Widget _noResults() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.search_off_rounded,
            size: 200.0,
            color: Colors.grey,
          ),
          const SizedBox(height: 16.0),
          Text(
            'Food not found',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          Text(
            'Try searching the item with a different keyword.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}
