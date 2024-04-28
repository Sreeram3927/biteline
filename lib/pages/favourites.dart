import 'package:biteline/data/user.dart';
import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {

  static final User _user = User();
  late List<Food> _favouriteFoods;

  @override
  void initState() {
    super.initState();
    _favouriteFoods = _user.getFavorites;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      child: _favouriteFoods.isEmpty ? _noFavourites() : GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: List.generate(_favouriteFoods.length, (index) => FoodCard(food: _favouriteFoods[index])),
      ),
    );
  }

  Widget _noFavourites() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite_outline_rounded,
            size: 200.0,
            color: Colors.grey,
          ),
          const SizedBox(height: 16.0),
          Text(
            'No Favourites found',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          Text(
            'Try adding a food as favourite to access it quickly from here',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}