import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book_actions.dart';
import 'book_details_header.dart';
import 'book_rating.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const BookDetailsHeader(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const AspectRatioImage(aspectRatio: 3 / 4),
        ),
        const SizedBox(height: 24),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.gildaDisplay().toString(),
            color: Colors.grey.shade400,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 12),
        const BookRating(),
        const SizedBox(height: 37),
        const BooksActions(),
      ],
    );
  }
}
