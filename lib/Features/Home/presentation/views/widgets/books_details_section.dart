import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/core/utils/assets.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'aspect_ratio_image.dart';
import 'book_actions.dart';
import 'book_rating.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookEntity});
  final BookEntity bookEntity;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: AspectRatioImage(
            aspectRatio: 3 / 4,
            imageUrl: bookEntity.image ?? '',
          ),
        ),
        const SizedBox(height: 24),
        Text(
          bookEntity.title,
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: FontAsset.kPlayFireFont,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          bookEntity.authorName!,
          textAlign: TextAlign.center,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: FontAsset.kRoboto,
            color: Colors.grey.shade400,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 12),
        const BookRating(rating: '5', count: '295'),
        const SizedBox(height: 30),
        BooksActions(bookEntity: bookEntity),
      ],
    );
  }
}
