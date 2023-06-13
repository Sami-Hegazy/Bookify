import 'package:bookify/Features/Home/presentation/views/widgets/custom_horizontal_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomHorizontalList(),
          Text('text'),
        ],
      ),
    );
  }
}
