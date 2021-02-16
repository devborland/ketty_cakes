import 'package:flutter/material.dart';
import 'package:ketty_cakes/widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealScreen(
  //   this.categoryId,
  //   this.categoryTitle,
  // );

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArgs['id'];
    final String categoryTitle = routeArgs['title'];
    final caregoryMeals = DUMMY_MEALS
        .where(
          (meal) => meal.categories.contains(categoryId),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: caregoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            affordability: caregoryMeals[index].affordability,
            complexity: caregoryMeals[index].complexity,
            duration: caregoryMeals[index].duration,
            imageUrl: caregoryMeals[index].imageUrl,
            title: caregoryMeals[index].title,
          );
        },
      ),
    );
  }
}
