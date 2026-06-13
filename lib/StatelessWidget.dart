/// Importamos la librería principal de Flutter
/// que contiene widgets y componentes visuales.
import 'package:flutter/material.dart';

/// Función principal de la aplicación.
/// Todo programa Flutter inicia desde main().
void main() {
  /// runApp() ejecuta la aplicación.
  /// Recibe como parámetro el widget principal.
  runApp(MiAplicacion());
}

/// Creamos un StatelessWidget.
/// Este tipo de widget no cambia su información.
class MiAplicacion extends StatelessWidget {
  /// El método build() construye la interfaz.
  @override
  Widget build(BuildContext context) {
    /// MaterialApp es el contenedor principal
    /// de una aplicación Flutter.
    return MaterialApp(
      /// Oculta la cinta DEBUG.
      debugShowCheckedModeBanner: false,

      /// Scaffold crea la estructura visual básica.
      home: Scaffold(
        /// AppBar representa la barra superior.
        appBar: AppBar(title: Text('Mi Primera Interfaz')),

        /// Body contiene el contenido principal.
        body: Center(
          /// Center centra los widgets en pantalla.
          child: Column(
            /// Alinea los elementos verticalmente al centro.
            mainAxisAlignment: MainAxisAlignment.center,

            /// Lista de widgets hijos.
            children: [
              /// Widget para mostrar un ícono.
              Icon(Icons.phone_android, size: 80),

              /// Espacio vertical entre widgets.
              SizedBox(height: 20),

              /// Widget para mostrar texto.
              Text(
                'Hola Flutter',

                /// Estilo del texto.
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              /// Otro espacio vertical.
              SizedBox(height: 20),

              /// Botón interactivo.
              ElevatedButton(
                /// Acción al presionar el botón.
                onPressed: () {
                  /// print() muestra mensajes en consola.
//                   print('Botón presionado');
                },

                /// Texto del botón.
                child: Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}