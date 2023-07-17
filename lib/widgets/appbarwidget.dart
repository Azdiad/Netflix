import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';

class appbarwidget extends StatelessWidget {
  const appbarwidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: Row(children: [
            const Icon(
              Icons.cast,
              color: whitee,
              size: 30,
            ),
            swidth,
            Container(
              color: Colors.deepPurpleAccent,
              height: 35,
              width: 35,
            ),
            swidth,
          ]),
        )
      ],
    );
  }
}
