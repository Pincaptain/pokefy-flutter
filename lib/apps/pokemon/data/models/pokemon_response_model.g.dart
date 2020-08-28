// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonResponseModel _$PokemonResponseModelFromJson(Map<String, dynamic> json) {
  return PokemonResponseModel(
    (json['pokemon'] as List)
        ?.map((e) =>
            e == null ? null : PokemonModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonResponseModelToJson(
        PokemonResponseModel instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
    };
