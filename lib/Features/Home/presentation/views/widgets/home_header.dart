import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsImage.kLogoImage,
            height: 60,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kSearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: MyColors.kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
