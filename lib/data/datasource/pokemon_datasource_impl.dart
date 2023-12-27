import 'package:curso_flutter_pokemon/data/mappers/pokemon_mapper.dart';
import 'package:curso_flutter_pokemon/data/models/pokemon_model.dart';
import 'package:curso_flutter_pokemon/domain/datasource/pokemon_datasource.dart';
import 'package:curso_flutter_pokemon/domain/entities/pokemon.dart';
import 'package:dio/dio.dart';

class PokemonDatasourceImpl implements PokemonDatasource {
  final _dio = Dio();
  @override
  Future<List<Pokemon>> getPokemons() async {
    List<Pokemon> pokemons = [];
    try {
      await Future.delayed(const Duration(seconds: 5));
      final response = await _dio.get('https://pokeapi.co/api/v2/pokemon');
      if (response.statusCode != 200) {
        return [];
      }
      final pokemonsModel = PokemonModel.fromJson(response.data);
      for (var result in pokemonsModel.results) {
        final pokemon = PokemonMapper.toEntityPokemon(result);
        pokemons.add(pokemon);
      }
      print(response);
    } catch (e) {}
    return pokemons;
  }
}
