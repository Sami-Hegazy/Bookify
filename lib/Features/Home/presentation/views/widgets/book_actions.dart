import 'package:bookify/core/utils/assets.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:bookify/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '9.99\$',
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          const VerticalDivider(
            width: 1,
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textStyle: const TextStyle(
                fontFamily: FontAsset.kRoboto,
                color: Colors.white,
              ),
              onPressed: () {},
              backgroundColor: MyColors.kWarmOrange,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
