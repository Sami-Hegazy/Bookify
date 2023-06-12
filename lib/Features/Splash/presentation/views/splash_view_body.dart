import 'dart:async';
import 'dart:math';

import 'package:bookify/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController rotationAnimationController;

  late Animation<double> rotationAnimation;

  @override
  void initState() {
    super.initState();
    initRotationAnimation();
  }

  @override
  void dispose() {
    rotationAnimationController.dispose();
    super.dispose();
  }

  void initRotationAnimation() {
    rotationAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
    rotationAnimation = Tween<double>(begin: 0, end: pi / 2)
        .animate(rotationAnimationController);
    rotationAnimationController.forward();
    Timer(const Duration(milliseconds: 3000), () {
      rotationAnimationController.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: rotationAnimation,
      builder: (context, child) {
        return RotationTransition(
          turns: rotationAnimation,
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Image.asset(AssetsImage.kLogoImage),
            ),
          ),
        );
      },
    );
  }
}
