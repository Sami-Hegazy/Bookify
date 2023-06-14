import 'package:flutter/material.dart';

import 'aspect_ratio_image.dart';

class BookDetailsHorizontalList extends StatelessWidget {
  const BookDetailsHorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: AspectRatioImage(
              aspectRatio: 2.5 / 4,
              borderRadius: 8,
            ),
          );
        },
      ),
    );
  }
}
