// lib/pages/detail_page.dart
import 'package:flutter/material.dart';
// Menggunakan package path
import 'package:flutter_uts/models/recipe_model.dart'; 

class DetailPage extends StatelessWidget {
  final Recipe recipe;

  const DetailPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // 1. Gambar Resep
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                recipe.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.grey[300],
                    alignment: Alignment.center,
                    child: const Text('Gagal Memuat Gambar', style: TextStyle(color: Colors.black54)),
                  ),
              ),
            ),
            const SizedBox(height: 20),

            // 2. Kategori
            Chip(
              label: Text(recipe.category, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 20),

            // 3. Bahan-bahan
            const Text(
              'Bahan-bahan:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(color: Colors.grey),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.ingredients.map((ing) => Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                  child: Row(
                    children: [
                      const Icon(Icons.check_circle_outline, size: 16, color: Colors.green),
                      const SizedBox(width: 8),
                      Expanded(child: Text(ing)),
                    ],
                  ),
                )).toList(),
            ),
            const SizedBox(height: 30),

            // 4. Langkah Memasak
            const Text(
              'Langkah Memasak:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(color: Colors.grey),
            ...recipe.steps.asMap().entries.map((entry) {
              int index = entry.key + 1;
              String step = entry.value;
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Text('$index', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                    ),
                    const SizedBox(width: 10),
                    Expanded(child: Text(step, style: const TextStyle(fontSize: 16))),
                  ],
                ),
              );
            }).toList(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}