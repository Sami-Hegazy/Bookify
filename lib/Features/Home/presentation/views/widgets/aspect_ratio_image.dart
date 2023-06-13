import 'package:flutter/material.dart';

class AspectRatioImage extends StatelessWidget {
  const AspectRatioImage({
    super.key,
    required this.aspectRatio,
    this.borderRadius,
  });
  final double aspectRatio;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1544947950-fa07a98d237f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80')),
        ),
      ),
    );
  }
}
