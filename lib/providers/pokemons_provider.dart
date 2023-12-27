import 'package:curso_flutter_pokemon/data/datasource/pokemon_datasource_impl.dart';
import 'package:curso_flutter_pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:curso_flutter_pokemon/domain/entities/pokemon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonsProvider = FutureProvider<List<Pokemon>>((ref) {
  final repository = PokemonRepositoryImpl(PokemonDatasourceImpl());
  return repository.getPokemons();
});
