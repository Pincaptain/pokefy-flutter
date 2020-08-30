import 'package:flutter/material.dart';

class PokemonPage extends StatefulWidget {
  @override
  PokemonPageState createState() => PokemonPageState();
}

class PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokefy'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
