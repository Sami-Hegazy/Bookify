import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image.dart';
import 'package:flutter/material.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: AspectRatioImage(aspectRatio: 2.5 / 4),
          );
        },
      ),
    );
  }
}
