import 'package:flutter/material.dart';
import 'package:netflix/helpers/textstyle.dart';

class videowithmuteicon extends StatelessWidget {
  const videowithmuteicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
              "https://static-koimoi.akamaized.net/wp-content/new-galleries/2016/01/rocky-handsome-movie-poster0001.jpg",
              fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black.withOpacity(0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_off_sharp),
              iconSize: 30,
              color: whitee,
            ),
          ),
        ),
      ],
    );
  }
}
