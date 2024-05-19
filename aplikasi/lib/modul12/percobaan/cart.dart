import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {
      'title': 'Bayam',
      'price': 8000,
      'quantity': 2,
      'image': 'https://specialtyproduce.com/sppics/5113.png'
    },
    {
      'title': 'Wortel',
      'price': 4500,
      'quantity': 1,
      'image':
          'https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-7-1200.jpg'
    },
  ];

  ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang Belanja'),
        backgroundColor: Colors.orange,
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Text('Keranjang kosong!'),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ShoppingCartItem(item: item);
              },
            ),
      bottomNavigationBar: cartItems.isEmpty
          ? null
          : Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: Rp ${(cartItems.fold(0.0, (sum, item) => sum + item['price'] * item['quantity'])).toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Tampilkan bottom sheet untuk konfirmasi pembayaran
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Icon(Icons.shopping_bag,
                                      size: 50), // Tambahkan ikon tas belanja
                                ),
                                const SizedBox(height: 16.0),
                                const Text(
                                  'Lanjut ke pembayaran?',
                                  style: const TextStyle(fontSize: 18.0),
                                ),
                                const SizedBox(height: 16.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(
                                            context); // Tutup bottom sheet
                                      },
                                      child: const Text('Batal'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(
                                            context); // Tindakan untuk pembayaran
                                      },
                                      child: const Text('Lanjut'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      foregroundColor:
                          MaterialStateProperty.all(Colors.teal[900]),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 18.0)), // Tidak perlu `style:`
                    ),
                    child:
                        const Text('Bayar'), // Tombol untuk memicu bottom sheet
                  ),
                ],
              ),
            ),
    );
  }
}

class ShoppingCartItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const ShoppingCartItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                item['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title'],
                  style: const TextStyle(fontSize: 16.0),
                ),
                Text(
                  'Rp ' + item['price'].toStringAsFixed(2),
                  style: const TextStyle(fontSize: 18.0, color: Colors.grey),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        // Aksi saat mengurangi jumlah
                      },
                    ),
                    Text(
                      'Jumlah: ${item['quantity']}',
                      style: const TextStyle(fontSize: 14.0),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        // Aksi saat menambahkan jumlah
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // Bottom sheet untuk konfirmasi penghapusan item
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Anda yakin ingin menghapus item ini?',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(
                                    context); // Tutup bottom sheet tanpa menghapus
                              },
                              child: const Text('Batal'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Aksi untuk menghapus item
                                Navigator.pop(
                                    context); // Menutup bottom sheet dan menghapus item
                              },
                              child: const Text('Hapus'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
