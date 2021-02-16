import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisExtent: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 3 / 2,
      ),
      children: [],
    );
  }
}
