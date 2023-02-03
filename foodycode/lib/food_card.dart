import 'package:flutter/material.dart';
import './model/foods.dart';
import './food_item_screen.dart';
class FoodItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final int duration;
  FoodItem(
      {
      required this.id,  
      required this.title,
      required this.imageUrl,
      required this.affordability,
      required this.complexity,
      required this.duration});



  String get textcomplexity {
    switch (complexity) {
      case Complexity.Challenging:
        return 'challenging';
      case Complexity.Simple:
        return 'simple';
      case Complexity.Hard:
        return 'Hard';

      default:
        return 'unknown';
    }
  }

  String get textAffordability {
    switch (affordability) {
      case Affordability.Affordable:
        return 'affordable';

      case Affordability.Luxurious:
        return 'luxurious';

      case Affordability.Pricey:
        return 'pricey';

      default:
        return 'unknown';
    }
  }
    void detail(BuildContext ctx) {
      Navigator.of(ctx).pushNamed(
        FoodyItem.routname,
        arguments: id,
      );
    }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>detail(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 8,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl),
                ),
                Positioned(
                  bottom: 10,
                  right: 5,
                  child: Container(
                    height: 60,
                    width: 300,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black54,
                    ),
                    child: Text(
                      title,
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.av_timer_sharp),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('$duration'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work_outline),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(textcomplexity),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work_outline),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(textAffordability),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
