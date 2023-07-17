import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/view/searchpage.dart/widgets/searchTitle.dart';
import 'package:netflix/view/searchpage.dart/widgets/searchTile.dart';

class searchideal extends StatelessWidget {
  const searchideal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtitle(title: 'Top Searches'),
        sheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => topsearchtile(),
              separatorBuilder: (context, index) => sheight,
              itemCount: 10),
        )
      ],
    );
  }
}
