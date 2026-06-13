import 'package:flutter/material.dart';

void main() {
  /* inicializa el proyecto**/
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      print(controller.offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ScrollController')),
        body: ListView.builder(
          controller: controller,
          itemCount: 5000,
          itemBuilder: (context, index) {
            return ListTile(title: Text('Registro $index'));
          },
        ),
      ),
    );
  }
}


