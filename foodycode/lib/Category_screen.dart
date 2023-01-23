import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children:  [],
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
