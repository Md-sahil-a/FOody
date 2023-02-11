import 'package:flutter/material.dart';
import './category_item.dart';
import './dummy_data.dart';

class Categoryscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/ 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) => CatergoryItem(catData.id,catData.title, catData.color))
            .toList(),
    );
  }
}
