import 'package:bookify/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_header.dart';
import 'books_details_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                BookDetailsHeader(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 40)),
                SimilarBooksSections(),
                SizedBox(height: 8),
              ],
            ),
          ),
        )
      ],
    );
  }
}
