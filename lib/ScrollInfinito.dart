import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final ScrollController controller = ScrollController();

  List<int> items = List.generate(20, (index) => index);

  @override
  void initState() {
    super.initState();

    controller.addListener(() {

      if (controller.position.pixels ==
          controller.position.maxScrollExtent) {

        cargarMas();
      }
    });
  }

  void cargarMas() {

    setState(() {

      int inicio = items.length;

      items.addAll(
        List.generate(
          10,
          (index) => inicio + index,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Scroll Infinito"),
        ),
        body: ListView.builder(
          controller: controller,
          itemCount: items.length,
          itemBuilder: (context, index) {

            return ListTile(
              title: Text("Item ${items[index]}"),
            );
          },
        ),
      ),
    );
  }
}