import 'package:flutter/material.dart';

import './Category_screen.dart';
import './fav_screen.dart';

class tabScreen extends StatefulWidget {
  const tabScreen({super.key});
  @override
  State<tabScreen> createState() => _tabScreenState();
}

class _tabScreenState extends State<tabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('FOody'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              child: Text('categories'),
            ),
            Tab(
              icon: Icon(Icons.favorite_outline),
              child: Text('favourites'),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Categoryscreen(),
            const fav(),
          ],
        ),
      ),
    );
  }
}
