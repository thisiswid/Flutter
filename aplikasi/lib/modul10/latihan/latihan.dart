import 'package:aplikasi/modul10/latihan/latihan2.dart';
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
  final PasswordController = TextEditingController();
  final UsernameController = TextEditingController();

  String? validationinput() {
    if (UsernameController.text.isEmpty || PasswordController.text.isEmpty) {
      return 'Username atau Password Tidak boleh kosong';
    } else if (UsernameController.text.trim() == 'Wid' &&
        PasswordController.text.trim() == '6701223101') {
      return null;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Login'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 152,
        ),
        child: Column(
          children: [
            TextField(
              controller: UsernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: PasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
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
                        builder: (context) => Screen2(
                            Username: UsernameController.text,
                            Password: PasswordController.text)));
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Forgot Pasword'),
            ),
          ],
        ),
      ),
    );
  }
}
