import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<String> frutas = const [
    "manzana",
    "platano",
    "piña",
    "pera",
    "sandia",
    "fresa",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lista dinamica')),
        body: ListView.builder(
          itemCount: frutas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(frutas[index]),
            );
          },
        ),
      ),
    );
  }
}
