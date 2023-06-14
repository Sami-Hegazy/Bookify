import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/books_listview_item.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BooksListViewItem();
      },
    );
  }
}
