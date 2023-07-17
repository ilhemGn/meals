import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meals_app/constants.dart';
import 'package:meals_app/models/meal_model.dart';

class MealRecipeScreen extends StatelessWidget {
  final MealModel meal;

  const MealRecipeScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            meal.title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.circleChevronLeft,
                color: Colors.white,
              )),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(gradient: kGradient),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(
                      left: 46,
                      right: 46,
                      top: MediaQuery.of(context).size.height * 0.09,
                      bottom: 16),
                  elevation: 8,
                  shadowColor: Colors.black,
                  child: Image.network(meal.imageUrl),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Ingredients',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                for (final ingred in meal.ingredients)
                  Text(
                    ingred,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                const SizedBox(height: 20),
                const Text(
                  'Steps',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                for (final step in meal.steps)
                  Text(
                    step.replaceAll('-', '\n'),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
