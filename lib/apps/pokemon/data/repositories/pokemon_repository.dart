import 'package:injectable/injectable.dart';
import 'package:poekfy/apps/pokemon/data/providers/pokemon_provider.dart';
import 'package:poekfy/apps/pokemon/domain/entities/pokemon.dart';

import 'package:poekfy/apps/pokemon/domain/repositories/pokemon_repository.dart';

@Injectable(as: IPokemonRepository)
class PokemonRepository implements IPokemonRepository {
  IPokemonProvider pokemonProvider;

  PokemonRepository(this.pokemonProvider);

  @override
  Future<List<Pokemon>> getPokemon() async {
    var pokemon = await pokemonProvider.getPokemon();

    return pokemon.map((p) => Pokemon.fromModel(p)).toList();
  }
}
