import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeListPage extends StatelessWidget {
  final String ingredient;
  final List<Recipe> recipes;

  RecipeListPage({required this.ingredient, required this.recipes});

  @override
  Widget build(BuildContext context) {
    List<Recipe> filteredRecipes = recipes.where((recipe) {
      return recipe.ingredients.contains(ingredient);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes with $ingredient'),
      ),
      body: filteredRecipes.isEmpty
          ? Center(
        child: Text('No recipes found with $ingredient'),
      )
          : ListView.builder(
        itemCount: filteredRecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filteredRecipes[index].name),
            subtitle: Text(filteredRecipes[index].ingredients.join(', ')),
          );
        },
      ),
    );
  }
}
