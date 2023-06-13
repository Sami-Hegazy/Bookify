import 'package:bookify/Features/Home/presentation/views/widgets/custom_horizontal_list.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomHorizontalList(),
            SizedBox(height: 36),
            Text(
              'Best Seller',
              style: Styles.textMedium,
            ),
          ],
        ),
      ),
    );
  }
}
