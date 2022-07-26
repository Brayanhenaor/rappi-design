import 'package:get/get.dart';
import 'package:rappi_clon/data/repositories/categories_repository.dart';
import 'package:rappi_clon/domain/models/category.dart';

class HomeController extends GetxController {
  final CategoriesRepository _categoriesRepository =
      Get.put<CategoriesRepository>(CategoriesRepository());

  final categories = <Category>[].obs;
  @override
  void onInit() {
    super.onInit();
    categories(_categoriesRepository.getCategories());
  }
}
