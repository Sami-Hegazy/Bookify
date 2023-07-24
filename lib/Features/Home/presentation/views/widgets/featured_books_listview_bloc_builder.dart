import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/functions/sackbar_error.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/simmer.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import 'featured_books_listview.dart';

class FeaturedBoxListViewBlocConsumer extends StatelessWidget {
  const FeaturedBoxListViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BookEntity> books = [];

    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
        listener: (context, state) {
      if (state is FeaturedBooksSuccess) {
        books.addAll(state.books);
      }

      if (state is FeaturedBooksPaginationFailure) {
        showErrorSnackbar(context, state.errorMessage);
      }
    }, builder: (context, state) {
      if (state is FeaturedBooksSuccess ||
          state is FeaturedBooksPaginationLoading ||
          state is FeaturedBooksPaginationFailure) {
        return FeaturedBoxListView(books: books);
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return const BuildHorizonatlListShimmer();
      }
    });
  }
}
