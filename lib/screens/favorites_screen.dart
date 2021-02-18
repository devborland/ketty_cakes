import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return favoriteMeals.isEmpty
        ? Center(child: Text('You have no favorites yet'))
        : ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(
                id: favoriteMeals[index].id,
                affordability: favoriteMeals[index].affordability,
                complexity: favoriteMeals[index].complexity,
                duration: favoriteMeals[index].duration,
                imageUrl: favoriteMeals[index].imageUrl,
                title: favoriteMeals[index].title,
              );
            },
          );
  }
}
