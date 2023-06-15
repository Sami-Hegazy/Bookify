import 'package:flutter/material.dart';

class AspectRatioImage extends StatelessWidget {
  const AspectRatioImage({
    super.key,
    required this.aspectRatio,
    this.borderRadius,
    required this.imageUrl,
  });
  final double aspectRatio;
  final double? borderRadius;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
