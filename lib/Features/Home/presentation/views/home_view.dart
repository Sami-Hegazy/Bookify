import 'package:bookify/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Image.asset(
            AssetsImage.kLogoImage,
            height: 80,
            width: 80,
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
