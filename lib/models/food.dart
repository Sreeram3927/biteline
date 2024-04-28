import 'package:biteline/data/user.dart';

class Food {

  final int id;
  final String name;
  final String imageUrl;
  final String type;
  final double price;
  final double rating;
  final String description;
  bool isFavorite;
  int quantity;

  static final User _user = User();

  Food({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.price,
    required this.rating,
    required this.description,
    this.isFavorite = false,
    this.quantity = 1,
  }) {
    isFavorite = _user.isFavorite(this);
  }

  void toggleFavorite() {
    isFavorite = !isFavorite;
    _user.toggleFavorite(this);
  }
  
}