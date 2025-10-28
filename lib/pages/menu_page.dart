// lib/pages/menu_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_uts/data/dummy_recipes.dart';
import 'list_page.dart';

// Ganti class HomePage menjadi MenuPage
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void selectCategory(BuildContext context, String category) {
    // ... (Logika navigasi tetap sama)
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ListPage(category: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold di sini dihapus, akan dipindahkan ke WrapperPage
    return GridView.builder( // Langsung mengembalikan konten GridView
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        childAspectRatio: 3 / 2, 
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: availableCategories.length,
      itemBuilder: (context, index) {
        final category = availableCategories[index];
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell( 
            onTap: () => selectCategory(context, category),
            borderRadius: BorderRadius.circular(15),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orange.shade50, 
              ),
              child: Text(
                category,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}