import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/Features/Home/presentation/views/widgets/aspect_ratio_image.dart';
import 'package:bookify/core/utils/app_routes.dart';
import 'package:bookify/core/utils/assets.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.bookEntity});

  final BookEntity bookEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRoutes.kBookDetailsView, extra: bookEntity);
      },
      child: Container(
        height: 120,
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            AspectRatioImage(
              aspectRatio: 2.5 / 4,
              borderRadius: BorderRadius.circular(6),
              imageUrl: bookEntity.image ?? '',
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        bookEntity.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: FontAsset.kPlayFireFont,
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        bookEntity.authorName!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle14.copyWith(
                            fontFamily: FontAsset.kRoboto,
                            color: Colors.grey.shade400),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                            fontFamily: FontAsset.kRoboto,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        BookRating(
                          rating: bookEntity.rating!,
                          count: '4.8',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
