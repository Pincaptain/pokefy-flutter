import 'package:equatable/equatable.dart';

import 'package:poekfy/apps/pokemon/data/models/pokemon_model.dart';

class Pokemon extends PokemonModel with EquatableMixin {
  Pokemon(String wikiUrl, String name, String pokedex)
      : super(wikiUrl, name, pokedex);

  factory Pokemon.fromModel(PokemonModel pokemonModel) {
    return Pokemon(
      pokemonModel.wikiUrl,
      pokemonModel.name,
      pokemonModel.pokedex,
    );
  }

  @override
  List<Object> get props => [wikiUrl, name, pokedex];
}
