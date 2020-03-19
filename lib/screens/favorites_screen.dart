import 'package:Meals_App/models/meal.dart';
import 'package:Meals_App/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    }
    return ListView.builder(
      itemBuilder: (ctx, index) {
        final categoryMeal = favoriteMeals[index];
        return MealItem(
          id: categoryMeal.id,
          title: categoryMeal.title,
          imageUrl: categoryMeal.imageUrl,
          duration: categoryMeal.duration,
          affordability: categoryMeal.affordability,
          complexity: categoryMeal.complexity,
        );
      },
      itemCount: favoriteMeals.length,
    );
  }
}
