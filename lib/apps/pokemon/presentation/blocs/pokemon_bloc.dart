import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poekfy/apps/pokemon/data/providers/pokemon_provider.dart';

import 'package:poekfy/apps/pokemon/domain/entities/pokemon.dart';
import 'package:poekfy/apps/pokemon/domain/repositories/pokemon_repository.dart';

abstract class PokemonEvent extends Equatable {}

class GetPokemonEvent extends PokemonEvent {
  @override
  List<Object> get props => [];
}

abstract class PokemonState extends Equatable {}

class PokemonInitialState extends PokemonState {
  @override
  List<Object> get props => [];
}

class PokemonLoadingState extends PokemonState {
  @override
  List<Object> get props => [];
}

class PokemonLoadedState extends PokemonState {
  PokemonLoadedState({@required this.pokemon});

  final List<Pokemon> pokemon;

  @override
  List<Object> get props => [
        pokemon,
      ];
}

class PokemonErrorState extends PokemonState {
  PokemonErrorState({@required this.error});

  final String error;

  @override
  List<Object> get props => [error];
}

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc(this.pokemonRepository) : super(PokemonInitialState());

  final IPokemonRepository pokemonRepository;

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    yield PokemonLoadingState();

    try {
      var pokemon = await pokemonRepository.getPokemon();

      yield PokemonLoadedState(
        pokemon: pokemon,
      );
    } on PokemonException {
      yield PokemonErrorState(
        error: 'Pokemon data unavailable',
      );
    }
  }
}
