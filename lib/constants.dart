import 'package:flutter/material.dart';
import 'package:meals_app/screens/filter_screen.dart';

const kGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 13, 44, 47),
    Color.fromARGB(255, 129, 214, 218),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const kTextColor = Color.fromARGB(255, 4, 242, 255);
const kIconColor = Color.fromARGB(255, 24, 173, 181);
//Color.fromARGB(182, 27, 65, 67)

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.vegan: false,
  Filter.vegetarian: false,
  Filter.lactoseFree: false,
};
