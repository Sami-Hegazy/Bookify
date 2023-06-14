import 'package:bookify/Features/Search/presentation/views/widgets/search_result.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: MyColors.kSecondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Books Results',
              style: Styles.textStyle16.copyWith(
                color: MyColors.kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Expanded(
            child: SearchResult(),
          ),
        ],
      ),
    );
  }
}
