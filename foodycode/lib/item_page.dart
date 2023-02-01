import 'package:flutter/material.dart';
import './dummy_data.dart';
import './food_card.dart';
class DishPage extends StatelessWidget {
  // final String id;
  // final String title;
  // const DishPage(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final CategoryTitle = routeArg['title'];
    final id = routeArg['id'];
    final foodCategories = DUMMY_MEALS.where((meal){
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(CategoryTitle!)),
      body:  ListView.builder(itemBuilder: (context, index){
        return FoodItem(title: foodCategories[index].title, imageUrl: foodCategories[index].imageUrl, affordability: foodCategories[index].affordability, complexity: foodCategories[index].complexity, duration: foodCategories[index].duration,);
      }, itemCount: foodCategories.length,)
    );
  }
}