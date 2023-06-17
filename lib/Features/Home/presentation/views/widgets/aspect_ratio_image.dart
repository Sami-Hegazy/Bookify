import 'package:bookify/core/utils/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AspectRatioImage extends StatelessWidget {
  const AspectRatioImage({
    super.key,
    required this.aspectRatio,
    this.borderRadius,
    required this.imageUrl,
  });
  final double aspectRatio;
  final BorderRadiusGeometry? borderRadius;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            color: MyColors.kSecondaryColor,
            size: 40,
          ),
        ),
      ),
    );
  }
}
