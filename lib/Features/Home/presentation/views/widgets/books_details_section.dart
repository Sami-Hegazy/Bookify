import 'package:bookify/core/utils/assets.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'aspect_ratio_image.dart';
import 'book_actions.dart';
import 'book_rating.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const AspectRatioImage(
            aspectRatio: 3 / 4,
            imageUrl:
                'https://images.unsplash.com/photo-1544947950-fa07a98d237f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: FontAsset.kPlayFireFont,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: FontAsset.kRoboto,
            color: Colors.grey.shade400,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 12),
        const BookRating(rating: 5, count: ''),
        const SizedBox(height: 30),
        const BooksActions(),
      ],
    );
  }
}
