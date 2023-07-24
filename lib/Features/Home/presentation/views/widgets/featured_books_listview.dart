import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image.dart';
import 'package:bookify/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key, required this.state});

  final FeaturedBooksSuccess state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: state.books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.kBookDetailsView,
                    extra: state.books[index]);
              },
              child: AspectRatioImage(
                aspectRatio: 2.5 / 4,
                imageUrl: state.books[index].image ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}
