import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

    ChangeNotifierProvider(
      create: (context) => ContadorProvider(),
      child: const MyApp(),
    ),

  );
}

class ContadorProvider extends ChangeNotifier {

  int contador = 0;

  void incrementar() {
    contador++;
    notifyListeners();
  }

  void disminuir() {
    contador--;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'mi contador con Provider',
        ),
      ),

      body: Center(
        child: Consumer<ContadorProvider>(
          builder: (context, provider, child) {

            return Text(
              '${provider.contador}',
              style: const TextStyle(
                fontSize: 40,
              ),
            );
          },
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: () {
              Provider.of<ContadorProvider>(
                context,
                listen: false,
              ).disminuir();
            },
            heroTag: "btnDisminuir",
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 10),

          FloatingActionButton(
            onPressed: () {
              Provider.of<ContadorProvider>(
                context,
                listen: false,
              ).incrementar();
            },
            heroTag: "btnAumentar",
            child: const Icon(Icons.add),
          ),

        ],
      ),
    );
  }
}
