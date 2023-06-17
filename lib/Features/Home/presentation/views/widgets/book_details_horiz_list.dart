import 'package:bookify/Features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookify/core/widgets/custom_error_widget.dart';
import 'package:bookify/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'aspect_ratio_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: AspectRatioImage(
                    aspectRatio: 2.5 / 4,
                    borderRadius: BorderRadius.circular(8),
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksCubitFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustsomLoadingIndicator();
        }
      },
    );
  }
}
