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
              imageUrl:
                  'https://images.unsplash.com/photo-1544947950-fa07a98d237f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
            ),
          );
        },
      ),
    );
  }
}
