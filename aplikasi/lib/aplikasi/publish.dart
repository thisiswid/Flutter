import 'package:flutter/material.dart';

class PublishScreen extends StatelessWidget {
  const PublishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Publish Story',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'This is the Publish Screen',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
