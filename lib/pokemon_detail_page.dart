// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PokemonDetailPage extends StatelessWidget {
  final String name;
  final String number;
  final String imageUrl;

  const PokemonDetailPage({
    Key? key,
    required this.name,
    required this.number,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(Object context) {
    return Scaffold();
  }
}
