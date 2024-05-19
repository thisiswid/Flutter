import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo with Image and Icons',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Halaman Utama'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Gambar di bagian atas
              Image.network(
                'https://blog-static.mamikos.com/wp-content/uploads/2020/07/selfie-dulu-ah-1024x682.jpg',
              ),

              const SizedBox(
                height: 20,
              ), // Spasi antara gambar dan konten di bawahnya

              // Row dengan foto profil bulat dan nama
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://awsimages.detik.net.id/community/media/visual/2022/11/07/kasus-kucing-mati-dilempar-batu-di-jakarta-kronologi-hingga-penyebab-1.jpeg?w=1200',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Spasi antara foto profil dan nama
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Widiya',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text(
                        'Sedang Turu',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20), // Spasi sebelum garis

              // Divider sebagai garis
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),

              const SizedBox(height: 10), // Spasi setelah garis

              // Row untuk ikon love, chat, dan share
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Spasi di antara ikon
                children: [
                  Icon(Icons.favorite_border), // Ikon love
                  Icon(Icons.chat_bubble_outline), // Ikon chat
                  Icon(Icons.share), // Ikon share
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
