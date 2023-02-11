import 'package:flutter/material.dart';

import './filter_screen.dart';

class mainDrawer extends StatelessWidget {
  const mainDrawer({super.key});

  Widget buildtile(String text, IconData icon, VoidCallback tapper) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: tapper,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.amber,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 60),
            child: const Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Cooking Up!'
                ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          buildtile('Foods', Icons.restaurant,
          (){
            Navigator.of(context).pushReplacementNamed('/');
          }
          
          ),
          buildtile('Setings', Icons.settings,(){
            Navigator.of(context).pushReplacementNamed(FilterScreen.routName);
          }),

        ],
      ),
    );
  }
}
