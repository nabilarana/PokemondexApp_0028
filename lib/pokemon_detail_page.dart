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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              pokemonImage(),
              const SizedBox(height: 20),

              tabMenu(),
              const SizedBox(height: 20),
            ],
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
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back, size: 30, color: Colors.black),
      ),
      title: Column(
        children: [
          Text(
            pokemon.name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
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
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
        color: pokemon.type == "Grass"
            ? Colors.green[100]
            : pokemon.type == "Fire"
            ? Colors.red[100]
            : pokemon.type == "Water"
            ? Colors.blue[100]
            : Colors.grey[100],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Image.network(pokemon.url, fit: BoxFit.contain, height: 200),
      ),
    );
  }

  Widget tabMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        tabItem(title: "Forms", isActive: true),
        tabItem(title: "Detail"),
        tabItem(title: "Types"),
        tabItem(title: "Stats"),
        tabItem(title: "Weak"),
      ],
    );
  }

  Widget tabItem({required String title, bool isActive = false}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isActive ? Colors.black : Colors.black38,
          ),
        ),
        const SizedBox(height: 6),
        if (isActive)
          Container(
            height: 6,
            width: 6,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }
}
