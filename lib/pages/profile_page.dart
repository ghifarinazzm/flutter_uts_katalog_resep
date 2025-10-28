// lib/pages/profile_page.dart

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30),

            // 1. FOTO PROFILE
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 80,
                // Menggunakan foto profile placeholder yang stabil
                backgroundImage: NetworkImage(
                  'https://source.unsplash.com/random/200x200/?portrait,man,student',
                ),
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 25),

            // 2. CARD INFORMASI PROFILE
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Nama
                    const Text(
                      'Muhammad Ghifarin Azzam',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Keterangan / Jabatan
                    const Text(
                      'Mahasiswa Teknik Informatika',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    
                    const Divider(),
                    
                    // Contoh detail tambahan (Opsional)
                    ListTile(
                      leading: const Icon(Icons.school, color: Colors.blueGrey),
                      title: const Text('Fakultas Sains dan Teknologi'),
                      subtitle: Text('Universitas Islam Negeri Malang'),
                      dense: true,
                    ),
                    ListTile(
                      leading: const Icon(Icons.location_on, color: Colors.redAccent),
                      title: const Text('Malang, Jawa Timur'),
                      dense: true,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}