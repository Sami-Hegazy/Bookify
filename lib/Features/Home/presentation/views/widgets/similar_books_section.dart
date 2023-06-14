import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_horiz_list.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            'You can also like',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(height: 24),
        BookDetailsHorizontalList(),
      ],
    );
  }
}
