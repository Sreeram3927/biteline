import 'package:biteline/models/food.dart';
import 'package:biteline/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FoodType extends StatelessWidget {
  const FoodType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Food Type',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FoodCard(
                food: Food(
                  id: 1,
                  name: 'Burger',
                  imageUrl: 'https://th.bing.com/th/id/R.1783916534a859e72931328a8b8fc614?rik=ptZrEowokRoa8A&riu=http%3a%2f%2fwww.corvallisadvocate.com%2fwp-content%2fuploads%2f2013%2f06%2fbig-burger.jpg&ehk=K3b3XbLJ2T%2fdMsP%2fTVPY%2fKEYUGjcN031HmNhFMXMtDs%3d&risl=&pid=ImgRaw&r=0',
                  type: 'Breakfast',
                  price: 10.0,
                  rating: 4.5,
                  description: 'A hamburger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.',
                ),
              ),
              FoodCard(
                food: Food(
                  id: 1,
                  name: 'Burger',
                  imageUrl: 'https://th.bing.com/th/id/R.1783916534a859e72931328a8b8fc614?rik=ptZrEowokRoa8A&riu=http%3a%2f%2fwww.corvallisadvocate.com%2fwp-content%2fuploads%2f2013%2f06%2fbig-burger.jpg&ehk=K3b3XbLJ2T%2fdMsP%2fTVPY%2fKEYUGjcN031HmNhFMXMtDs%3d&risl=&pid=ImgRaw&r=0',
                  type: 'Breakfast',
                  price: 10.0,
                  rating: 4.5,
                  description: 'A hamburger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.',
                ),
              ),
              FoodCard(
                food: Food(
                  id: 1,
                  name: 'Burger',
                  imageUrl: 'https://th.bing.com/th/id/R.1783916534a859e72931328a8b8fc614?rik=ptZrEowokRoa8A&riu=http%3a%2f%2fwww.corvallisadvocate.com%2fwp-content%2fuploads%2f2013%2f06%2fbig-burger.jpg&ehk=K3b3XbLJ2T%2fdMsP%2fTVPY%2fKEYUGjcN031HmNhFMXMtDs%3d&risl=&pid=ImgRaw&r=0',
                  type: 'Breakfast',
                  price: 10.0,
                  rating: 4.5,
                  description: 'A hamburger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.',
                ),
              ),
              FoodCard(
                food: Food(
                  id: 1,
                  name: 'Burger',
                  imageUrl: 'https://th.bing.com/th/id/R.1783916534a859e72931328a8b8fc614?rik=ptZrEowokRoa8A&riu=http%3a%2f%2fwww.corvallisadvocate.com%2fwp-content%2fuploads%2f2013%2f06%2fbig-burger.jpg&ehk=K3b3XbLJ2T%2fdMsP%2fTVPY%2fKEYUGjcN031HmNhFMXMtDs%3d&risl=&pid=ImgRaw&r=0',
                  type: 'Breakfast',
                  price: 10.0,
                  rating: 4.5,
                  description: 'A hamburger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.',
                ),
              ),
              FoodCard(
                food: Food(
                  id: 1,
                  name: 'Burger',
                  imageUrl: 'https://th.bing.com/th/id/R.1783916534a859e72931328a8b8fc614?rik=ptZrEowokRoa8A&riu=http%3a%2f%2fwww.corvallisadvocate.com%2fwp-content%2fuploads%2f2013%2f06%2fbig-burger.jpg&ehk=K3b3XbLJ2T%2fdMsP%2fTVPY%2fKEYUGjcN031HmNhFMXMtDs%3d&risl=&pid=ImgRaw&r=0',
                  type: 'Breakfast',
                  price: 10.0,
                  rating: 4.5,
                  description: 'A hamburger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}