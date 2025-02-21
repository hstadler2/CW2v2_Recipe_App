/*
Harrison Stadler
CW2v2 - Recipe Book App
CSC 4360

I knnow I didn't have to add this screen bc I'm not a grad student, but I decided to do so anyways.

favorites_screen.dart
Screen displaying all the recipes marked as favorites.
*/

import 'package:flutter/material.dart';
import 'recipe.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Recipe> recipes;

  FavoritesScreen({required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite Recipes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(recipe.imageUrl, width: 50, height: 50),
              title: Text(recipe.title),
              onTap: () {},  // Here you can add functionality to tap and view the details again.
            ),
          );
        },
      ),
    );
  }
}
