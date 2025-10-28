// lib/pages/main_wrapper.dart
import 'package:flutter/material.dart';
// Import semua halaman yang akan ditampilkan di BottomNav
import 'menu_page.dart'; // Katalog Resep
import 'dashboard_page.dart';
import 'profile_page.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 1; // Mulai dari MenuPage (indeks 1)

  final List<Widget> _pages = [
    const DashboardPage(),
    const MenuPage(), // Index 1: Katalog Resep
    const ProfilePage(),
  ];

  final List<String> _pageTitles = [
    'Dashboard',
    'Katalog Resep Nusantara',
    'Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar diatur di sini, mengikuti halaman yang sedang aktif
      appBar: AppBar(
        title: Text(_pageTitles[_selectedIndex]),
        centerTitle: false,
        elevation: 1,
      ),
      
      // Konten utama: Halaman yang dipilih
      body: _pages[_selectedIndex], 

      // Navigasi Bawah
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu), // Menu Saya (Resep)
            label: 'Menu Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}