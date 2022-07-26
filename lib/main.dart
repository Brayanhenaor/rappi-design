import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rappi_clon/data/repositories/categories_repository.dart';
import 'package:rappi_clon/domain/controllers/home/home_controller.dart';
import 'package:rappi_clon/domain/controllers/prelogin/prelogin_controller.dart';
import 'package:rappi_clon/ui/pages/home/home_page.dart';
import 'package:rappi_clon/ui/pages/prelogin/prelogin_page.dart';
import 'package:rappi_clon/ui/theme/app_theme.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

void setupLocator() {
  Get.lazyPut(() => CategoriesRepository());
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
          page: () => const HomePage(),
          binding: BindingsBuilder(
            () {
              Get.lazyPut<HomeController>(() => HomeController());
            },
          ),
        ),
      ],
    );
  }
}
