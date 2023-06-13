import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'book_rating.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          const AspectRatioImage(
            aspectRatio: 2.5 / 4,
            borderRadius: 8,
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'Harry Potter\nand the Goblet of fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                          fontFamily: GoogleFonts.playfairDisplay().toString()),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'J.K Rowling',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14.copyWith(
                          fontFamily: GoogleFonts.playfairDisplay().toString(),
                          color: Colors.grey.shade400),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        '19.58 \$',
                        style: Styles.textStyle20.copyWith(
                          fontFamily: GoogleFonts.aBeeZee().toString(),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
