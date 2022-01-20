import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';
//import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  const CategoryMealsScreen(
    this.availableMeals, {
    Key? key,
  }) : super(key: key);
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;
  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late String? categoryTitle;
  late List<Meal> displayedMeals;
  var _loadedInitData = false;
  @override
  void initState() {
    // final routeArgs =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    // final categoryId = routeArgs['id'];
    // //final categoryTitle = routeArgs['title'];
    // categoryTitle = routeArgs['title'];
    // displayedMeals = DUMMY_MEALS.where((meal) {
    //   return meal.categories.contains(categoryId);
    // }).toList();
    // // final categoryMeals = DUMMY_MEALS.where((meal) {
    // //   return meal.categories.contains(categoryId);
    // // }).toList();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      final categoryId = routeArgs['id'];
      //final categoryTitle = routeArgs['title'];
      categoryTitle = routeArgs['title'];
      displayedMeals = widget.availableMeals.where((meal) {
        //DUMMY_MEALS заменено на widget.availableMeals
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
      // final categoryMeals = DUMMY_MEALS.where((meal) {
      //   return meal.categories.contains(categoryId);
      // }).toList();
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((element) => element.id == mealId);
    });
  }

// class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final routeArgs =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    // final categoryId = routeArgs['id'];
    // final categoryTitle = routeArgs['title'];
    // final categoryMeals = DUMMY_MEALS.where((meal) {
    //   return meal.categories.contains(categoryId);
    // }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(categoryTitle!),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals[index].id,
            affordability: displayedMeals[index].affordability,
            complexity: displayedMeals[index].complexity,
            duration: displayedMeals[index].duration,
            imageUrl: displayedMeals[index].imageUrl,
            title: displayedMeals[index].title,
            // removeItem: _removeMeal,
          );
          // return Text(categoryMeals[index].title);
        },
        itemCount: displayedMeals.length,
      ),
      // body: ListView.builder(
      //   itemBuilder: (ctx, index) {
      //     return MealItem(
      //         id: categoryMeals[index].id,
      //         affordability: categoryMeals[index].affordability,
      //         complexity: categoryMeals[index].complexity,
      //         duration: categoryMeals[index].duration,
      //         imageUrl: categoryMeals[index].imageUrl,
      //         title: categoryMeals[index].title);
      //     // return Text(categoryMeals[index].title);
      //   },
      //   itemCount: categoryMeals.length,
      // ),
    );
  }
}
