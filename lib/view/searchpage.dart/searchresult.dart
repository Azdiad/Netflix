import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/view/searchpage.dart/widgets/searchTitle.dart';

const imageruls =
    "https://occ-0-768-448.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABZfGwED6kNpc0JrQ4HcjtjIqATWuaHmY6hw6Zx_lVjHdFKXndNNllUBGPfG_q2JXHKk17US8UP0QYGZjaA3c91PfiVj-uaofOIE.jpg?r=9ee";

class result extends StatelessWidget {
  const result({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtitle(title: "Movies & TV"),
        sheight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1.4,
          children: List.generate(20, (index) {
            return const movieCard();
          }),
        ))
      ],
    );
  }
}

class movieCard extends StatelessWidget {
  const movieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imageruls), fit: BoxFit.cover),
          borderRadius: cardRadius10),
    );
  }
}
