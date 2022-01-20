enum Complexity {
  Simple,
  Challending,
  Hard,
}
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegetarian;
  final bool isVegan;
  final bool isGlutenFree;
  final bool isLactoseFree;
  // bool isFavorite;//но эта настройка для всех пользователей
  const Meal(
      {required this.complexity,
      // required this.isFavorite,
      required this.affordability,
      required this.isVegetarian,
      required this.isVegan,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.steps,
      required this.duration});
}
