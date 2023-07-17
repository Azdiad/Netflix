import 'package:flutter/material.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/view/searchpage.dart/searchpage.dart';

class topsearchtile extends StatelessWidget {
  const topsearchtile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: screensize * 0.4,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageurl))),
          ),
          Expanded(
              child: Text(
            "Movie Name",
            style: headcolor,
          )),
          IconButton.filled(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_outline_rounded,
                color: whitee,
                size: 50,
              ))
        ],
      ),
    );
  }
}
