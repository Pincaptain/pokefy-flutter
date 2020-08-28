import 'package:json_annotation/json_annotation.dart';

import 'package:poekfy/apps/pokemon/data/models/pokemon_model.dart';

part 'pokemon_response_model.g.dart';

@JsonSerializable()
class PokemonResponseModel {
  final List<PokemonModel> pokemon;

  PokemonResponseModel(this.pokemon);

  Map<String, dynamic> toJson() => _$PokemonResponseModelToJson(this);

  factory PokemonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseModelFromJson(json);
}
