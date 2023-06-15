import 'package:bookify/Features/Home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookify/core/utils/assets.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/utils/colors.dart';
import 'best_seller_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
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
          ),
        ),
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              FeaturedBoxListView(),
              Padding(
                padding: EdgeInsets.only(top: 36, left: 24, bottom: 8),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
