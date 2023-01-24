enum Complexity {
  simple,
  challenging,
  Hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Foods {
  final String id;
  final List<String> Categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordable;
  final bool isGlutenFree;
  final bool isLactosFree;
  final bool isVegan;
  final bool isVeg;

  Foods(
      {required this.id,
      required this.Categories,
      required this.affordable,
      required this.duration,
      required this.imageUrl,
      required this.ingredients,
      required this.complexity,
      required this.isGlutenFree,
      required this.isLactosFree,
      required this.isVeg,
      required this.isVegan,
      required this.steps,
      required this.title});
}
