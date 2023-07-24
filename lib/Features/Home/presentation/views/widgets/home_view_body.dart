import 'package:bookify/core/utils/assets.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'featured_books_listview_bloc_consumer.dart';
import 'newaest_books_listview.dart';
import 'home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const HomeHeader(),
              const SizedBox(height: 16),
              const FeaturedBoxListViewBlocConsumer(),
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 24, bottom: 8),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18.copyWith(
                    fontFamily: FontAsset.kRoboto,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
