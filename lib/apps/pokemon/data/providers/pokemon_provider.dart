import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import 'package:poekfy/apps/pokemon/data/models/pokemon_model.dart';
import 'package:poekfy/apps/pokemon/data/models/pokemon_response_model.dart';

abstract class IPokemonProvider {
  Future<List<PokemonModel>> getPokemon();
}

@Injectable(as: IPokemonProvider)
class PokemonProvider implements IPokemonProvider {
  // If you want to rebuild change this ip
  // to your local ip address
  final String provider = "http://0.0.0.0";

  @override
  Future<List<PokemonModel>> getPokemon() async {
    var response = await http.get(
      Uri.encodeFull('$provider/pokemon'),
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );

    switch (response.statusCode) {
      case 200:
        var jsonString = utf8.decode(response.bodyBytes);
        var jsonData = json.decode(jsonString);
        var pokemonResponse = PokemonResponseModel.fromJson(jsonData);
        var pokemon = pokemonResponse.pokemon;

        return pokemon;

      default:
        throw PokemonException();
    }
  }
}

class PokemonException implements Exception {}
