import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image_loading_indicator.dart';
import 'package:bookify/core/widgets/custom_fading_widget.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListviewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListviewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.26,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: AspectRatioImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
