import 'package:flutter/material.dart';
import 'package:flutter_meals/widgets/meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen(this.favoritesMeals, {Key? key}) : super(key: key);
  final List<Meal> favoritesMeals;
  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return const Center(
        child: Text('You have no favorites yet - start adding some! '),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritesMeals[index].id,
            affordability: favoritesMeals[index].affordability,
            complexity: favoritesMeals[index].complexity,
            duration: favoritesMeals[index].duration,
            imageUrl: favoritesMeals[index].imageUrl,
            title: favoritesMeals[index].title,
            // removeItem: null,
          );
        },
        itemCount: favoritesMeals.length,
      );
    }
  }
}
