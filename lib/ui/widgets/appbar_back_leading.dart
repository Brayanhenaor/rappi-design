import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
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
