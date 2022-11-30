import 'package:flutter/material.dart';
import '../meal_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 180,
          childAspectRatio: 1,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          mainAxisExtent: 75,
        ),
        children: listOfCategories
            .map((data) => CategoryItem(data.id, data.title, data.color))
            .toList(),
      ),
    );
  }
}
