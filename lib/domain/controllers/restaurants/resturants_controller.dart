import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class RestaurantsController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
