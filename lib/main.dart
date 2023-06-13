import 'package:bookify/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BookifyApp());
}

class BookifyApp extends StatelessWidget {
  const BookifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: MyColors.kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
