import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),

        body: ListView(
          children: const [
            ListTile(title: Text('UNO')),
            ListTile(title: Text('DOS')),
            ListTile(title: Text('TRES')),
            ListTile(title: Text('CUATRO')),
            ListTile(title: Text('CINCO')),
            ListTile(title: Text('SEIS')),
            ListTile(title: Text('SIETE')),
            ListTile(title: Text('OCHO')),
          ],
        ),
      ),
    );
  }
}
