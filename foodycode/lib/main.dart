import 'package:flutter/material.dart';
import './Category_screen.dart';
import './item_page.dart';
import './food_item_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        '/': (ctx) => Categoryscreen(),
        '/inner-dish': (ctx) =>  DishPage(),
        FoodyItem.routname:(ctx) =>const FoodyItem(), 
      },
    );
  }
}

