/*
Harrison Stadler
CW2v2 - Recipe Book App
CSC 4360
*/

// details_screen.dart
// Screen for displaying detailed information about a selected recipe, including an option to mark it as a favorite.

import 'package:flutter/material.dart';
import 'recipe.dart';

class DetailsScreen extends StatefulWidget {
  final Recipe recipe;

  DetailsScreen({required this.recipe});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              widget.recipe.imageUrl,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text('Ingredients:', style: Theme.of(context).textTheme.titleMedium),
            ...widget.recipe.ingredients.map((ingredient) => Text(ingredient)).toList(),
            SizedBox(height: 20),
            Text('Instructions:', style: Theme.of(context).textTheme.titleMedium),
            Text(widget.recipe.instructions),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    widget.recipe.isFavorite = !widget.recipe.isFavorite;
                  });
                },
                icon: Icon(widget.recipe.isFavorite ? Icons.star : Icons.star_border),
                label: Text(widget.recipe.isFavorite ? 'Remove from Favorites' : 'Add to Favorites'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
