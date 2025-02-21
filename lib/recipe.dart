/*
Harrison Stadler
CW2v2 - Recipe Book App
CSC 4360

recipe.dart
Defines the structure for recipes, including title, ingredients, instructions, image URL, and favorite status.
*/

class Recipe {
  String title;
  List<String> ingredients;
  String instructions;
  bool isFavorite;
  String imageUrl;  // Ensure that an image URL must be provided.

  Recipe({
    required this.title,
    required this.ingredients,
    required this.instructions,
    required this.imageUrl,  // Making imageUrl required.
    this.isFavorite = false,
  });
}
