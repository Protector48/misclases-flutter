import 'package:flutter/material.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Rutas nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => PantallaInicio(),
        '/segunda': (context) => SegundaPantalla(),
      },
    );
  }
}

//PRIMERA PANTALLA
class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla de Inicio')),
      body: Center(
        child: ElevatedButton(
          child: Text('Enviar'),
          onPressed: () {
            //Variable o argumento que se envia
            Navigator.pushNamed(
              context,
              '/segunda',
              arguments:
                  'Hola desde la primera pantalla, utilizando dartpad.dev',
            );
          },
        ),
      ),
    );
  }
}

//SEGUNDA PANTALLA
class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Argumento que viene de la primera pantalla
    final mensaje = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Segunda Pantalla')),
      body: Center(child: Text(mensaje, style: TextStyle(fontSize: 20))),
    );
  }
}