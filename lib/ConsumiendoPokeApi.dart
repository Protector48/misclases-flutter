import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

/* ---------------- APP PRINCIPAL ---------------- */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PokemonPage(),
    );
  }
}

/* ---------------- PÁGINA PRINCIPAL ---------------- */

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

/*constructor*/
class _PokemonPageState extends State<PokemonPage> {
  String nombre = '';
  String imagen = '';
  int experiencia = 0;
  String habilidad = '';


final TextEditingController _busquedaController = TextEditingController();

  Future<void> obtenerPokemon(String pokemon) async {
    final url = Uri.parse('https://pokeapi.co/api/v2/pokemon/${pokemon.toLowerCase().trim()}');
    
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        nombre = data["name"];
        experiencia = data["base_experience"];
        imagen = data["sprites"]["front_default"];
        habilidad = data["abilities"][1]["ability"]["name"];
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pokémon no encontrado')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Consumiendo la api de pokemon')),
      
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _busquedaController,
                        decoration: const InputDecoration(
                          hintText: 'Buscar pokémon...',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        if (_busquedaController.text.isNotEmpty) {
                          obtenerPokemon(_busquedaController.text);
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
         
              if (nombre.isEmpty)
                const Text(
                  'escribe arriba chiquillo',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              else ...[
                if (imagen.isNotEmpty) Image.network(imagen),
                Text("Nombre: ${nombre.toUpperCase()}"),
                Text("Experiencia: $experiencia"),
                Text("Habilidad: $habilidad"),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
