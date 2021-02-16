import 'package:flutter/material.dart';
import 'category_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ketty.Cakes'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 220.0,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
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
      ),
    );
  }
}
