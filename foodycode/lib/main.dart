import 'package:flutter/material.dart';
import './Category_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:  Categoryscreen() ,
    );
  }
}

