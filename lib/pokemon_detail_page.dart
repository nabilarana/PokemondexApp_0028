import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokemon.dart';

class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildHeader(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const SizedBox(height: 20)],
          ),
        ),
      ),
    );
  }

  AppBar buildHeader(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      title: Column(
        children: [
          Text(
            pokemon.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Text(
            pokemon.type,
            style: const TextStyle(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget pokemonImage() {
    return Container(
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffc7dcd6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Image.network(pokemon.url, fit: BoxFit.fill)),
    );
  }
}
