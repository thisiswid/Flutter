import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.Username, required this.Password});
  final Username;

  final Password;
  @override
  Widget build(BuildContext context) {
    String myUsername = 'Wid';
    String myPass = '6701223101';

    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kedua'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          if (Username == myUsername && Password == myPass)
            Text('Selamat Datang ${Username}'),
          if (Username != myUsername || Password != myPass)
            Text('${Username} Username atau Password Salah'),
        ]),
      ),
    );
  }
}
