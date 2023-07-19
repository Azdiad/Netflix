import 'package:flutter/material.dart';
import 'package:netflix/helpers/textstyle.dart';

class videowithmuteicon extends StatefulWidget {
  final upcoming;
  videowithmuteicon({super.key, this.upcoming, required this.index});
  final int index;

  @override
  State<videowithmuteicon> createState() => _videowithmuteiconState();
}

class _videowithmuteiconState extends State<videowithmuteicon> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
              'https://image.tmdb.org/t/p/w300' +
                  widget.upcoming[0]['poster_path'],
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
