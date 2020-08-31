// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'apps/pokemon/data/providers/pokemon_provider.dart';
import 'apps/pokemon/domain/repositories/pokemon_repository.dart';
import 'apps/pokemon/presentation/blocs/pokemon_bloc.dart';
import 'apps/pokemon/data/repositories/pokemon_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IPokemonProvider>(() => PokemonProvider());
  gh.factory<IPokemonRepository>(
      () => PokemonRepository(get<IPokemonProvider>()));
  gh.factory<PokemonBloc>(() => PokemonBloc(get<IPokemonRepository>()));
  return get;
}
