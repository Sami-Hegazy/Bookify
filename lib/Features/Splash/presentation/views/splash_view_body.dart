import 'package:bookify/core/constants.dart';
import 'package:bookify/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.75,
        child: Image.asset(AssetsImage.kLogoImage),
      ),
    );
  }
}
