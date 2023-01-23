import 'package:flutter/material.dart';

class CatergoryItem extends StatelessWidget {
  final String title;
  final Color color;
  CatergoryItem(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          color.withOpacity(0.7),
          color,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(title),
    );
  }
}
