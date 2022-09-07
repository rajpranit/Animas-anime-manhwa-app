import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        children: DUMMY_CATEGORY
            .map(
              (category) => CategoryItem(category.title, category.color),
            )
            .toList(),
      ),
    );
  }
}
