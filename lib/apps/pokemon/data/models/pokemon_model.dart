import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel {
  @JsonKey(name: 'wiki_url')
  final String wikiUrl;
  final String name;
  final String pokedex;

  PokemonModel(this.wikiUrl, this.name, this.pokedex);

  Map<String, dynamic> toJson() => _$PokemonModelToJson(this);

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}
