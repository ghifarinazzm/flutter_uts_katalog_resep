// lib/pages/list_page.dart
import 'package:flutter/material.dart';
// Menggunakan package path
import 'package:flutter_uts/models/recipe_model.dart'; 
import 'package:flutter_uts/data/dummy_recipes.dart'; 
import 'package:flutter_uts/widgets/recipe_card.dart';
import 'detail_page.dart';

class ListPage extends StatelessWidget {
  final String category;

  const ListPage({Key? key, required this.category}) : super(key: key);

  List<Recipe> get filteredRecipes {
    // Logic filtering yang benar
    return dummyRecipes.where((recipe) => recipe.category == category).toList();
  }

  void selectRecipe(BuildContext context, Recipe recipe) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetailPage(recipe: recipe),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Kategori: $category'),
      ),
      body: filteredRecipes.isEmpty
        ? Center(child: Text('Tidak ada resep untuk kategori $category'))
        : ListView.builder(
            itemCount: filteredRecipes.length,
            itemBuilder: (ctx, index) {
              final recipe = filteredRecipes[index];
              return RecipeCard(
                recipe: recipe,
                onTap: () => selectRecipe(context, recipe),
              );
            },
          ),
    );
  }
}