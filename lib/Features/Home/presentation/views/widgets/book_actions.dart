import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookify/core/utils/assets.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:bookify/core/utils/functions/launch_url.dart';
import 'package:bookify/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              onPressed: () async {},
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
              text: getText(bookModel),
              textStyle: const TextStyle(
                fontFamily: FontAsset.kRoboto,
                color: Colors.white,
              ),
              onPressed: () async {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
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

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Free Preview';
    }
  }
}
