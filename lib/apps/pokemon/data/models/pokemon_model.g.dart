// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return PokemonModel(
    json['wiki_url'] as String,
    json['name'] as String,
    json['pokedex'] as String,
  );
}

Map<String, dynamic> _$PokemonModelToJson(PokemonModel instance) =>
    <String, dynamic>{
      'wiki_url': instance.wikiUrl,
      'name': instance.name,
      'pokedex': instance.pokedex,
    };
