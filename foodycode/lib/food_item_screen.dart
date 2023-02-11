import 'package:flutter/material.dart';
import './dummy_data.dart';

class FoodyItem extends StatelessWidget {
  const FoodyItem({super.key});
  static const routname = '/fooddetail';

  Widget buildsectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget buildcotainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 255, 251, 255)),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 200,
      width: 500,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final argId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == argId);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedMeal.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildsectionTitle(context, 'Ingredients'),
              buildcotainer(
                ListView.builder(
                  itemBuilder: ((context, index) => Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 5,
                          ),
                          child: Text(
                            selectedMeal.ingredients[index],
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              buildsectionTitle(context, 'Steps'),
              buildcotainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        '# ${index + 1}',
                      ),
                    ),
                    title: Text(selectedMeal.steps[index]),
                  ),
                  itemCount: selectedMeal.steps.length,
                ),
              ),
            ],
          ),
        ));
  }
}
