import 'package:flutter/material.dart';

class Halaman extends StatefulWidget {
  static const String routeName = '/screen2';
  const Halaman({super.key, required this.Username});

  final Username;

  @override
  State<Halaman> createState() => _HalamanState();
}

class _HalamanState extends State<Halaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Data",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
