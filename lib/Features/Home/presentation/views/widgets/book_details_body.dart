import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookify/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_header.dart';
import 'books_details_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                const BookDetailsHeader(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 40)),
                const SimilarBooksSections(),
                const SizedBox(height: 8),
              ],
            ),
          ),
        )
      ],
    );
  }
}
