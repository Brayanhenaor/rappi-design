import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rappi_clon/domain/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      splashColor: Colors.blue.withOpacity(0.1),
      onTap: () => Get.toNamed(category.route),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(
                  'assets/categories/${category.icon}.png',
                ),
                height: 80,
              ),
            ),
          ),
          Text(
            category.name,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
