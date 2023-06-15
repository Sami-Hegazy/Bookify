import 'package:bookify/Features/Home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
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
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
