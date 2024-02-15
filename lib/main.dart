import 'package:flutter/material.dart';

import 'core/app_colors.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'RedHatDisplay',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        platform: TargetPlatform.iOS,
        scaffoldBackgroundColor: AppColors.lightGrey,
      ),
      home: const MainPage(),
    );
  }
}
