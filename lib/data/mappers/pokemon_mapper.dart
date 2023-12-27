import 'package:curso_flutter_pokemon/data/models/pokemon_model.dart';
import 'package:curso_flutter_pokemon/domain/entities/pokemon.dart';

class PokemonMapper {
  static Pokemon toEntityPokemon(Result model) => Pokemon(nombre: model.name);
}
