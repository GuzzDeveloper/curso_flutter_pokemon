import 'package:curso_flutter_pokemon/domain/datasource/pokemon_datasource.dart';
import 'package:curso_flutter_pokemon/domain/entities/pokemon.dart';
import 'package:curso_flutter_pokemon/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonDatasource datasource;

  PokemonRepositoryImpl(this.datasource);
  @override
  Future<List<Pokemon>> getPokemons() {
    return datasource.getPokemons();
  }
}
