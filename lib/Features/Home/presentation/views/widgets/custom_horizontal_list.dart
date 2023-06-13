import 'package:flutter/material.dart';

import 'horizontal_listview_item.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: MediaQuery.of(context).size.width * 0.38,
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: HorizonatlListViewItem(),
          );
        },
      ),
    );
  }
}
