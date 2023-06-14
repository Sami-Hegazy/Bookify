import 'package:bookify/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:bookify/core/utils/app_routes.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
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
          title: Image.asset(
            AssetsImage.kLogoImage,
            height: 60,
            width: 60,
          ),
          actions: [
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
        body: const HomeViewBody(),
      ),
    );
  }
}
