import 'package:flutter/material.dart';
import 'package:aplikasi/modul12/percobaan/cart.dart';

class SpinachDetail extends StatelessWidget {
  const SpinachDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detil Produk'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Keranjang Belanja',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingCart(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://specialtyproduce.com/sppics/5113.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Bayam',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Harga
                  const Text(
                    'Rp 8.000 per ikat',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  // Deskripsi
                  const Text(
                    'Bayam adalah sayuran hijau yang kaya vitamin A, C, and K. Bayam juga sumber zat besi dan folat. Bayam dapat dimakan mentah atau dimasak.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Manfaat:',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '* Kaya vitamin dan mineral',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const Text(
                    '* Dapat meningkatkan kesehatan jantung',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const Text(
                    '* Dapat meningkatkan fungsi otak',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  // Tambahkan teks highlight di sini
                  const Text(
                    'Kurir tersedia! Dapat dikirim dalam waktu 4 jam',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.lightGreen),
                  ),
                  const SizedBox(height: 40.0),
                  // Tombol tambahkan ke keranjang
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content:
                                Text('Berhasil ditambahkan ke keranjang!')),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      foregroundColor:
                          MaterialStateProperty.all(Colors.teal[900]),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 18)),
                    ),
                    child: const Text('Tambahkan ke keranjang belanja'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
