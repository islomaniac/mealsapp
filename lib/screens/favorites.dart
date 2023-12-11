import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';

//stateful widgetta =  consumerstatefulwidget yazılıyor
//state gördüğün yerin başınada consumer yazılıyor.

class Favorites extends ConsumerStatefulWidget {
  const Favorites({super.key});

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    List<Meal> favorites = ref.watch(favoriteMealsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Favoriler")),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) => Text(favorites[index].name),
      ),
    );
  }
}
