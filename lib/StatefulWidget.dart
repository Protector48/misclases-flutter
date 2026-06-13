//paquete principal
import 'package:flutter/material.dart';

void main() {
  //Iniciar
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ocultamos el debug
      //Pantalla principal.
      home: Contador(),
    );
  }
}

//StatefulWidget:Permite que la información cambie dinámicamente y se  muestre en la interfaz.
class Contador extends StatefulWidget {
  @override
  State<Contador> createState() => _ContadorState();
}

//Clase que maneja el estado del widget.
class _ContadorState extends State<Contador> {
  //Variable
  int contador = 0;

  void aumentar() {
    //actualiza el estado de la interfaz.
    setState(() {
      contador++;
    });
  }

  void disminuir() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Barra superior o appbar.
      appBar: AppBar(title: Text('Ejemplo de Contador')), //valor static

      body: Center(
        child: Column(
          //Centramos de manera vertical
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //widget texto.
            Text('Contador:', style: TextStyle(fontSize: 25)),

            SizedBox(height: 10),

            //Mostramos el valor cambiante en la interfaz
            Text(
              '$contador',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            //boton que desencadenara el evento de incrementar el valor
            //             ElevatedButton(onPressed: aumentar, child: Text('+')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: disminuir, child: Text('-')),
                SizedBox(width: 20),
                ElevatedButton(onPressed: aumentar, child: Text('+')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}