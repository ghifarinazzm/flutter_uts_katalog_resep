// lib/models/recipe_model.dart

class Recipe {
  final String id;
  final String title;
  final String imageUrl;
  final String category;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.category,
    required this.ingredients,
    required this.steps,
  });
}