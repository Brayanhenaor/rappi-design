import 'package:flutter/material.dart';
import 'package:rappi_clon/domain/models/category.dart';
import 'package:rappi_clon/ui/pages/home/widgets/category.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;

  const Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.count(
        crossAxisCount: 2,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        children: List.generate(
          categories.length,
          (index) {
            return CategoryCard(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}
