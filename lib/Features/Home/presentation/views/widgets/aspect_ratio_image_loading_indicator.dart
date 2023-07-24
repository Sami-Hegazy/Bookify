import 'package:flutter/material.dart';

class AspectRatioImageLoadingIndicator extends StatelessWidget {
  const AspectRatioImageLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          color: const Color(0xFF00FFFF),
        ),
      ),
    );
  }
}
