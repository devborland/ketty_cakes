import 'package:flutter/material.dart';
import 'screens/filters_screen.dart';

import 'screens/category_meal_screen.dart';
import 'screens/error_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ketty.Cakes',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            headline6: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(20, 51, 51, 1),
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routName: (ctx) => FiltersScreen(),
        ErrorScreen.routeName: (ctx) => ErrorScreen(),
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => ErrorScreen());
      },
    );
  }
}
