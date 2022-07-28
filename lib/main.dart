import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rappi_clon/domain/controllers/home/home_controller.dart';
import 'package:rappi_clon/domain/controllers/prelogin/prelogin_controller.dart';
import 'package:rappi_clon/domain/controllers/restaurants/resturants_controller.dart';
import 'package:rappi_clon/ui/pages/home/home_page.dart';
import 'package:rappi_clon/ui/pages/prelogin/prelogin_page.dart';
import 'package:rappi_clon/ui/pages/restaurants/restaurants_page.dart';
import 'package:rappi_clon/ui/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.dark,
      defaultTransition: Transition.circularReveal,
      initialRoute: '/prelogin',
      getPages: [
        GetPage(
          name: '/prelogin',
          page: () => const PreloginPage(),
          binding: BindingsBuilder(
            () {
              Get.lazyPut<PreloginController>(() => PreloginController());
            },
          ),
        ),
        GetPage(
          name: '/home',
          transition: Transition.circularReveal,
          page: () => HomePage(),
          binding: BindingsBuilder(
            () {
              Get.lazyPut<HomeController>(
                () => HomeController(),
              );
            },
          ),
        ),
        GetPage(
          transition: Transition.downToUp,
          name: '/restaurants',
          page: () => const RestaurantsPage(),
          binding: BindingsBuilder(
            () {
              Get.lazyPut<RestaurantsController>(
                () => RestaurantsController(),
              );
            },
          ),
        )
      ],
    );
  }
}
