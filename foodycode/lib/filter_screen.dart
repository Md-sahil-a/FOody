import 'package:flutter/material.dart';
import 'package:foodycode/custom_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static const routName = '/filter-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      drawer:const mainDrawer(),
      body: Center(
        child: Text("Welocome"),
      ),
    );
  }
}