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
          padding: const EdgeInsets.symmetric(horizontal: 18)
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height:20),
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
      leading:  IconButton(
        onPressed: () => Navigator.pop(context), 
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }
}
