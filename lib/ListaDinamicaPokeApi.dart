import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PokemonPage());
  }
}

class PokemonPage extends StatefulWidget {
  const PokemonPage({super.key});

  @override
  State<PokemonPage> createState() => _PokemonPageSatate();
}

class _PokemonPageSatate extends State<PokemonPage> {
  List pokemon = [];
  
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    obtenerPokemons();

    controller.addListener(() {
      print(controller.offset);
    });
  }

  Future<void> obtenerPokemons() async {
    final response = await http.get(
      Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100'),
    );

    final data = jsonDecode(response.body);

    setState(() {
      pokemon = data['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CONSUMIENDO POKEAPI Y LISTVIEW')),
      body: ListView.builder(
        controller: controller, 
        itemCount: pokemon.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
     'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png',
              width: 50,
              height: 50,
            ),
            title: Text(pokemon[index]['name']),
          );
        },
      ),
    );
  }
}
