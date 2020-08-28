import 'package:flutter/material.dart';

import 'package:poekfy/apps/pokemon/presentation/pages/pokemon.dart';
import 'package:poekfy/dependency.dart';

void main() {
  configureDependencies();
  runApp(PokemonPage());
}
