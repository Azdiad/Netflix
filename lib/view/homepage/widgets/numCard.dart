import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';

class numcard extends StatelessWidget {
  numcard({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(height: 200, width: 50),
            Container(
              height: 200,
              width: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwc0srbF05pcbd-OHh75u0DZYg7zw1qHCtoA&usqp=CAU'),
                      fit: BoxFit.cover),
                  borderRadius: cardRadius20),
            ),
          ],
        ),
        Positioned(
          left: 8,
          bottom: -20,
          child: BorderedText(
            strokeColor: whitee,
            strokeWidth: 5,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                  fontSize: 140,
                  decoration: TextDecoration.none,
                  decorationColor: whitee,
                  color: backgroundcolor,
                  fontWeight: FontWeight.w900),
            ),
          ),
        )
      ],
    );
  }
}
