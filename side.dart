// recipe_details_screen.dart

import 'package:flutter/material.dart';

import 'main.dart'; // Import the main.dart file to access the Recipe class.

class RecipeDetailsScreen extends StatelessWidget {
  final Recipie recipe;

  const RecipeDetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title_of_recipie),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Takes you back to the previous screen
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.title_of_recipie,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16.0),
            Text(
              "Ingredients:",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10.0),
            Text(recipe.ingredients.join(", ")),
            const SizedBox(height: 20.0),
            Text(
              "Instructions:",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10.0),
            Text(recipe.instructions),
          ],
        ),
      ),
    );
  }
}
