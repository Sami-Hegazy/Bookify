import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/simmer.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import 'featured_books_listview.dart';

class FeaturedBoxListViewBlocBuilder extends StatelessWidget {
  const FeaturedBoxListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return FeaturedBoxListView(state: state);
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return const BuildHorizonatlListShimmer();
      }
    });
  }
}
