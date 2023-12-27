import 'package:curso_flutter_pokemon/domain/entities/pokemon.dart';

abstract class PokemonDatasource {
  Future<List<Pokemon>> getPokemons();
}
