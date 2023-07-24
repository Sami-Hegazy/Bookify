import 'package:bookify/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image.dart';
import 'package:bookify/core/utils/app_routes.dart';
import 'package:bookify/core/widgets/custom_error_widget.dart';
import 'package:bookify/core/widgets/simmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
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
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const BuildHorizonatlListShimmer();
        }
      },
    );
  }
}
