// home_screen.dart
// Home screen showing a list of recipes with their images and allowing navigation to detailed views.

import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'favorites_screen.dart';
import 'recipe.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Recipe> recipes = [
    Recipe(
      title: 'Spaghetti Carbonara',
      ingredients: ['Pasta', 'Eggs', 'Pancetta', 'Parmesan'],
      instructions: 'Cook pasta, fry pancetta, mix eggs and cheese, and combine when hot.',
      imageUrl: 'https://static01.nyt.com/images/2021/02/14/dining/carbonara-horizontal/carbonara-horizontal-jumbo-v2.jpg',
    ),
    Recipe(
      title: 'Chicken Fried Steak',
      ingredients: ['Steak', 'Flour', 'Eggs', 'Milk', 'Spices'],
      instructions: 'Tenderize steak, dredge in flour and eggs, then fry.',
      imageUrl: 'https://therecipecritic.com/wp-content/uploads/2023/09/chicken-fried-steak-6.jpg',
    ),
    Recipe(
      title: 'Shrimp and Grits',
      ingredients: ['Shrimp', 'Grits', 'Cheese', 'Garlic', 'Butter'],
      instructions: 'Cook grits with cheese, sauté shrimp with garlic and butter.',
      imageUrl: 'https://pinkowlkitchen.com/wp-content/uploads/2023/08/cajun-shrimp-and-grits-featured-image-1.jpg',
    ),
    Recipe(
      title: 'Fried Green Tomatoes',
      ingredients: ['Green tomatoes', 'Cornmeal', 'Eggs', 'Flour'],
      instructions: 'Slice tomatoes, dredge in cornmeal and flour, then fry.',
      imageUrl: 'https://cookingwithcocktailrings.com/wp-content/uploads/2021/07/Fried-Green-Tomatoes-with-Comeback-Sauce-42.jpg',
    ),
    Recipe(
      title: 'Banana Pudding',
      ingredients: ['Bananas', 'Vanilla Wafers', 'Pudding', 'Whipped Cream'],
      instructions: 'Layer vanilla wafers, bananas, pudding, and whipped cream.',
      imageUrl: 'https://www.momontimeout.com/wp-content/uploads/2020/07/the-best-banana-pudding-recipe-served-on-a-white-plate-garnished-with-whipped-cream-and-nilla-wafers-square-image.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book CW2v2 hstadler2'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesScreen(recipes: recipes.where((r) => r.isFavorite).toList()),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(recipe.imageUrl, width: 50, height: 50),
              title: Text(recipe.title),
              subtitle: Text('Tap to view details'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
