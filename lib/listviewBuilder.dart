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
          title: const Text('LISTVIEW.BUILDER'),
        ),
        body: ListView.builder(
          itemCount: 500,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text('Items ${index + 1}'),
            );
          },
        ),
      ),
    );
  }
}
