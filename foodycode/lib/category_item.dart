import 'package:flutter/material.dart';
import './item_page.dart';

class CatergoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CatergoryItem(this.id, this.title, this.color);
  // ignore: non_constant_identifier_names
  void NavigateToitem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/inner-dish',
      arguments: {'id': id, 'title': title},
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white30,
      borderRadius: BorderRadius.circular(15),
      onTap: (() => NavigateToitem(context)),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.4),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(title),
      ),
    );
  }
}
