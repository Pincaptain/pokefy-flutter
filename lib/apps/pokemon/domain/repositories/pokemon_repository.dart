import 'package:poekfy/apps/pokemon/domain/entities/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getPokemon();
}
