import 'package:bookify/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustsomLoadingIndicator extends StatelessWidget {
  const CustsomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
          color: MyColors.kSecondaryColor, backgroundColor: Colors.blue),
    );
  }
}
