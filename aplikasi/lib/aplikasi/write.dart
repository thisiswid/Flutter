import 'package:flutter/material.dart';
import 'add.dart';

class WriteScreen extends StatelessWidget {
  const WriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Write',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          BookItem(name: 'Dandadan', imagePath: 'assets/images/buku1.png'),
          BookItem(
              name: 'Seperti Dendam', imagePath: 'assets/images/buku2.png'),
          BookItem(name: 'About Nada', imagePath: 'assets/images/buku3.png'),
          BookItem(name: 'Sesuap Rasa', imagePath: 'assets/images/buku4.png'),
        ],
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  final String name;
  final String imagePath;

  const BookItem({Key? key, required this.name, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        height: 80,
      ),
      title: Text(name),
      trailing: IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          // Tambahkan aksi ketika ikon opsi ditekan
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WriteScreen(),
  ));
}
