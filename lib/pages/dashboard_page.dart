// lib/pages/dashboard_page.dart

import 'package:flutter/material.dart';
// Import data dummy untuk menampilkan statistik
import 'package:flutter_uts/data/dummy_recipes.dart'; 

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Gunakan Colors.orange secara langsung (MaterialColor) untuk mengakses shades
    const primaryMaterialColor = Colors.orange; 

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 50),

            // KARTU SELAMAT DATANG (Hero Section)
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // Gradasi warna yang sudah diperbaiki
                  gradient: LinearGradient(
                    colors: [
                      primaryMaterialColor.shade700, // FIXED
                      primaryMaterialColor.shade400, // FIXED
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Ikon Besar
                    Icon(
                      Icons.kitchen,
                      size: 60,
                      color: Colors.white,
                    ),
                    SizedBox(height: 15),

                    // Teks Utama (Selamat Datang)
                    Text(
                      "Selamat Datang Di Aplikasi Resep Kita",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 5.0,
                            color: Colors.black38,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),

                    // Kata-kata Khas Dapur
                    Text(
                      "— Resep Terbaik, Cita Rasa Tiada Tara.—",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            // INFORMASI STATISTIK (Mengambil data dari dummy_recipes)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfoBox(
                      icon: Icons.bookmark_border, 
                      // Menampilkan jumlah resep total
                      title: '${dummyRecipes.length} Resep', 
                      subtitle: 'Total Resep'),
                  InfoBox(
                      icon: Icons.category,
                      // Menampilkan jumlah kategori yang tersedia
                      title: '${availableCategories.length} Kategori',
                      subtitle: 'Tersedia'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget Bantu untuk Kotak Informasi Kecil
class InfoBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const InfoBox({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.orange),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}