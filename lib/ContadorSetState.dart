import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Contador(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int numero = 0;

  void aumentar() {
    setState(() {
      numero++;
    });
  }

  void disminuir() {
    setState(() {
      numero--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Mi Contador con setState"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "$numero",
              style: const TextStyle(fontSize: 50),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  onPressed: disminuir,
                  child: const Text("Disminuir"),
                ),

                const SizedBox(width: 15),

                ElevatedButton(
                  onPressed: aumentar,
                  child: const Text("Aumentar"),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
