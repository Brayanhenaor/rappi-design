import 'package:flutter/material.dart';
import 'package:rappi_clon/ui/pages/prelogin/prelogin_page.dart';
import 'package:rappi_clon/ui/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.dark,
      home: const PreloginPage(),
    );
  }
}
