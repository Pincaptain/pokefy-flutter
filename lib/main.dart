import 'package:flutter/material.dart';

import 'package:poekfy/apps/pokemon/presentation/pages/pokemon.dart';
import 'package:poekfy/dependency.dart';

void main() {
  configureDependencies();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokefy',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: PokemonPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
