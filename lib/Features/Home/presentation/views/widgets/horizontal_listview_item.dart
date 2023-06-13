import 'package:flutter/material.dart';

import 'aspect_ratio_image.dart';

class HorizonatlListViewItem extends StatelessWidget {
  const HorizonatlListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatioImage(aspectRatio: 2.5 / 4);
  }
}
