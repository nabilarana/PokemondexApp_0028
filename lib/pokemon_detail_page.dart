import 'package:flutter/material.dart';

class PokemonDetailPage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String number;

  const PokemonDetailPage({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white);
  }
}
