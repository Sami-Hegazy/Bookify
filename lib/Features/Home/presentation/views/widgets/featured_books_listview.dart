import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image.dart';
import 'package:bookify/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBoxListView extends StatefulWidget {
  const FeaturedBoxListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<FeaturedBoxListView> createState() => _FeaturedBoxListViewState();
}

class _FeaturedBoxListViewState extends State<FeaturedBoxListView> {
  late final ScrollController _scrollController;
  int nextPage = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() async {
    var currentPosition = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: widget.books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.kBookDetailsView,
                    extra: widget.books[index]);
              },
              child: AspectRatioImage(
                aspectRatio: 2.5 / 4,
                imageUrl: widget.books[index].image ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}
