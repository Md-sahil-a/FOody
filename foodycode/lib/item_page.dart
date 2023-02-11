import 'package:flutter/material.dart';
import './dummy_data.dart';
import './food_card.dart';
import './model/foods.dart';
class DishPage extends StatefulWidget {
  @override
  State<DishPage> createState() => _DishPageState();
}

class _DishPageState extends State<DishPage> {
  @override

  String ?CategoryTitle;
  List<Meal> ?foodCategories;
  var ispageLoaded = false;
  void initState() {
    // TODO: implement initState
     
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if(!ispageLoaded)
    {
      final routeArg = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
     CategoryTitle = routeArg['title'];
    final argid = routeArg['id'];
     foodCategories = DUMMY_MEALS.where((meal){
      return meal.categories.contains(argid);
    }).toList();
    ispageLoaded = true;
    }
    super.didChangeDependencies();
  }

  void deleteItem (String mealId){
    setState(() {
      
      foodCategories?.removeWhere((meal) => meal.id == mealId);
    });

  }
  
  // final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(CategoryTitle!)),
      body:  ListView.builder(itemBuilder: (context, index){
        return FoodItem(id: foodCategories![index].id,  title: foodCategories![index].title, imageUrl: foodCategories![index].imageUrl, affordability: foodCategories![index].affordability, complexity: foodCategories![index].complexity, duration: foodCategories![index].duration, removeItem:deleteItem, );
      }, itemCount: foodCategories?.length,)
    );
  }
}