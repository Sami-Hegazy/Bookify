import 'package:bookify/core/utils/assets.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        children: [
          Image.asset(
            AssetsImage.kLogoImage,
            height: 60,
            width: 60,
          ),
          const Spacer(),
          IconButton(
            alignment: Alignment.centerRight,
            onPressed: () {},
            color: MyColors.kSecondaryColor,
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
