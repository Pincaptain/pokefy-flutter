import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:poekfy/apps/pokemon/presentation/blocs/pokemon_bloc.dart';
import 'package:poekfy/apps/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:poekfy/dependency.dart';

class PokemonPage extends StatefulWidget {
  @override
  PokemonPageState createState() => PokemonPageState();
}

class PokemonPageState extends State<PokemonPage> {
  final PokemonBloc pokemonBloc = getIt<PokemonBloc>();

  @override
  void dispose() {
    super.dispose();
    pokemonBloc.close();
  }

  @override
  void initState() {
    super.initState();
    pokemonBloc.add(GetPokemonEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => pokemonBloc,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Pokefy'),
            centerTitle: true,
          ),
          body: BlocBuilder<PokemonBloc, PokemonState>(
            builder: (context, state) {
              if (state is PokemonLoadedState) {
                return ListView.builder(
                  itemCount: state.pokemon.length,
                  itemBuilder: (context, index) =>
                      PokemonCard(pokemon: state.pokemon[index]),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )),
    );
  }
}
