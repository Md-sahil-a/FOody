import 'package:flutter/material.dart';


import './tab_screen.dart';
import './item_page.dart';
import './food_item_screen.dart';
import './filter_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        '/': (ctx) => const tabScreen(),
        '/inner-dish': (ctx) =>  DishPage(),
        FilterScreen.routName: ((ctx) =>  FilterScreen()),        
        FoodyItem.routname:(ctx) =>const FoodyItem(), 
      },
    );
  }
}

