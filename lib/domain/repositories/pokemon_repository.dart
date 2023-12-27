import 'package:curso_flutter_pokemon/domain/entities/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemons();
}
