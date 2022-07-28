import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:rappi_clon/domain/controllers/restaurants/resturants_controller.dart';
import 'package:rappi_clon/ui/pages/restaurants/widgets/order_types.dart';
import 'package:rappi_clon/ui/pages/restaurants/widgets/search.dart';
import 'package:rappi_clon/ui/theme/colors.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RestaurantsController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            _AppBarActions(),
          ],
          leading: const _AppBarLeading(),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const _AppBarTitle(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => OrderTypes(
                  onTap: controller.updateSelectedIndex,
                  selectedIndex: controller.selectedIndex.value,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: SearchInput(
                  searchHandler: (text) => {},
                  hintText: 'What do you want to eat?',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Cl 27B #57-9',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5),
        Icon(Icons.arrow_drop_down, color: Colors.orange, size: 28),
      ],
    );
  }
}

class _AppBarLeading extends StatelessWidget {
  const _AppBarLeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
      ),
    );
  }
}

class _AppBarActions extends StatelessWidget {
  const _AppBarActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            color: AppColors.green,
          ),
          child: Row(
            children: const [
              Icon(Icons.shopping_bag_outlined),
              SizedBox(
                width: 5,
              ),
              Text(
                '3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
