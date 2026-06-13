import 'package:flutter/material.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Ruta de inicio
      initialRoute: '/',

      //definimos las rutas
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
          child: Text('Ir a Segunda Pantalla'),
          onPressed: () {
            // Navegación usando ruta nombrada
            Navigator.pushNamed(context, '/segunda');
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
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Pantalla')),
      body: Center(
        child: ElevatedButton(
          child: Text('<-- Regresar'),
          onPressed: () {
            // Regresar a la pantalla anterior
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}