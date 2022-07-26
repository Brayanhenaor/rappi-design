import 'package:rappi_clon/domain/models/category.dart';
import 'package:rappi_clon/domain/repositories/abstract_categories.dart';

class CategoriesRepository implements AbstractCategories {
  @override
  List<Category> getCategories() {
    return <Category>[
      Category(
        icon: 'burger',
        name: 'Restaurant',
        route: 'route',
      ),
      Category(
        icon: 'pharmacy',
        name: 'Pharmacy',
        route: 'route',
      ),
      Category(
        icon: 'turbo',
        name: 'Turbo',
        route: 'route',
      ),
      Category(
        icon: 'supermarket',
        name: 'Supermarket',
        route: 'route',
      ),
      Category(
        icon: 'express',
        name: 'Express',
        route: 'route',
      ),
      Category(
        icon: 'store',
        name: 'Stores',
        route: 'route',
      ),
      Category(
        icon: 'licor',
        name: 'Licor',
        route: 'route',
      ),
      Category(
        icon: 'soat',
        name: 'SOAT',
        route: 'route',
      ),
      Category(
        icon: 'perro',
        name: 'Pet',
        route: 'route',
      ),
    ];
  }
}
