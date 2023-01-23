import 'package:flutter/material.dart';
class DishPage extends StatelessWidget {
  // final String id;
  // final String title;
  // const DishPage(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final CategoryTitle = routeArg['title'];
    final id = routeArg['id'];

    return Scaffold(
      appBar: AppBar(title: Text(CategoryTitle!)),
      body:  Container(
        child: const Text('Welcome inside the dish Page'),
      ),
    );
  }
}