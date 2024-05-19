import 'package:aplikasi/modul10/percobaan/percobaan2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final UsernameController = TextEditingController();

  String? validationinput() {
    if (UsernameController.text.isEmpty) {
      return 'Username Tidak boleh kosong';
    } else if (UsernameController.text.trim() == 'Wid') {
      return null;
    } else {
      return 'Username Salah';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Login'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: UsernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                final message = validationinput();
                if (message != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                    ),
                  );
                  return;
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Halaman(Username: UsernameController)));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
