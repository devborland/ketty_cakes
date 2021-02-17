import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(12.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 220.0,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        childAspectRatio: 3 / 2,
      ),
      children: DUMMY_CATEGORIES
          .map(
            (categoryData) => CategoryItem(
              title: categoryData.title,
              color: categoryData.color,
              id: categoryData.id,
            ),
          )
          .toList(),
    );
  }
}
