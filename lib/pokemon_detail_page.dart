import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokemon.dart';

class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pokemon.name)),
      body: Center(child: Text("Detail Page for ${pokemon.name}")),
    );
  }
}
