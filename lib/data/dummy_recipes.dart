// lib/data/dummy_recipes.dart
// Menggunakan package path
import 'package:flutter_uts/models/recipe_model.dart'; 

final List<Recipe> dummyRecipes = [
  Recipe(
    id: 'r1',
    title: 'Nasi Goreng Spesial',
    // URL Gambar Statis yang terjamin aktif
    imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.halodoc.com%2Fartikel%2F5-resep-nasi-goreng-sederhana-hingga-spesial-mudah-dan-praktis%3Fsrsltid%3DAfmBOoqB9Y65iu6egFPUgEvSmRwQhvUcETjXc83AG3k3Bnlxqvlhd4Sx&psig=AOvVaw02BF_agyCF_vvBNuI4Kwsk&ust=1761627495768000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCKiugvzLw5ADFQAAAAAdAAAAABAE', 
    category: 'Nasi',
    ingredients: [
      'Nasi putih (1 piring)',
      'Telur (1 butir)',
      'Bawang merah (3 siung)',
      'Bawang putih (2 siung)',
      'Kecap manis (2 sdm)',
      'Garam dan merica',
    ],
    steps: [
      'Haluskan bawang merah dan bawang putih.',
      'Tumis bumbu halus hingga harum, masukkan telur, orak-arik.',
      'Masukkan nasi putih, kecap, garam, dan merica. Aduk rata.',
      'Masak hingga semua tercampur rata dan matang.',
      'Sajikan selagi hangat dengan pelengkap.',
    ],
  ),
  Recipe(
    id: 'r2',
    title: 'Sate Ayam Madura',
    // URL Gambar Statis yang terjamin aktif
    imageUrl: 'https://raw.githubusercontent.com/flutter-gallery/assets/master/images/sate.jpg', 
    category: 'Ayam',
    ingredients: [
      'Daging ayam (250g)',
      'Kacang tanah goreng (50g)',
      'Kecap manis',
      'Bawang putih (2 siung)',
      'Gula merah',
      'Air jeruk limau',
    ],
    steps: [
      'Potong dadu daging ayam, tusuk di lidi sate.',
      'Haluskan kacang goreng, bawang putih, dan gula merah untuk bumbu.',
      'Campurkan bumbu kacang dan kecap, oleskan pada sate.',
      'Bakar sate di atas arang atau teflon hingga matang sambil dibolak-balik.',
      'Sajikan dengan bumbu kacang dan irisan bawang merah.',
    ],
  ),
  Recipe(
    id: 'r3',
    title: 'Gulai Daun Singkong',
    // URL Gambar Statis yang terjamin aktif
    imageUrl: 'https://raw.githubusercontent.com/flutter-gallery/assets/master/images/gulai.jpg', 
    category: 'Sayur',
    ingredients: [
      'Daun singkong muda (1 ikat)',
      'Santan kental (200ml)',
      'Bawang merah (5 siung)',
      'Kunyit (2 cm)',
      'Cabai rawit (sesuai selera)',
      'Garam, gula, dan penyedap rasa',
    ],
    steps: [
      'Rebus daun singkong hingga empuk, tiriskan dan potong-potong.',
      'Haluskan semua bumbu (bawang merah, kunyit, cabai).',
      'Tumis bumbu halus hingga harum.',
      'Masukkan daun singkong dan santan. Tambahkan garam dan gula.',
      'Masak hingga mendidih, santan tidak pecah, dan bumbu meresap sempurna.',
    ],
  ),
  Recipe(
    id: 'r4',
    title: 'Rendang Sapi Khas Padang',
    // URL Gambar Statis yang terjamin aktif
    imageUrl: 'https://raw.githubusercontent.com/flutter-gallery/assets/master/images/rendang.jpg', 
    category: 'Daging',
    ingredients: [
      'Daging sapi (500g)',
      'Santan kental (500ml)',
      'Bumbu dasar rendang (siap pakai atau buat sendiri)',
      'Daun kunyit dan serai',
    ],
    steps: [
      'Masak santan hingga mendidih sambil terus diaduk.',
      'Masukkan bumbu rendang, daun kunyit, dan serai.',
      'Masukkan potongan daging sapi.',
      'Kecilkan api, masak selama 3-4 jam hingga santan mengering dan menjadi bumbu kental berwarna cokelat kehitaman (rendang).',
      'Sajikan bersama nasi hangat.',
    ],
  ),
];

final List<String> availableCategories = 
    dummyRecipes.map((r) => r.category).toSet().toList();