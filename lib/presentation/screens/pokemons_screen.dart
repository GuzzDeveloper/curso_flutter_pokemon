import 'package:curso_flutter_pokemon/domain/entities/pokemon.dart';
import 'package:curso_flutter_pokemon/providers/pokemons_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemons = ref.watch(pokemonsProvider);
    return Scaffold(
      body: Center(
          child: pokemons.when(
        data: (data) {
          return ListView.separated(
              itemBuilder: (context, index) {
                final pokemon = data[index];
                return ItemPokemon(pokemon: pokemon);
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: data.length);
        },
        error: (error, stackTrace) => Text('Error:$error'),
        loading: () => const CircularProgressIndicator(),
      )),
    );
  }
}

class ItemPokemon extends StatelessWidget {
  const ItemPokemon({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 100,
          height: 100,
          child:
              Image(image: NetworkImage('https://q  via.placeholder.com/100x100')),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(pokemon.nombre),
      ],
    );
  }
}
