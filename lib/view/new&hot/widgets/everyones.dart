import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/widgets/videowithmute.dart';

class everyoneswatchingwidget extends StatelessWidget {
  const everyoneswatchingwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  Extraction 2",
          style: TextStyle(
              color: whitee, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 50),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Back from the brink of death, highly skilled commando Tyler Rake takes on another dangerous mission: saving the imprisoned family of a ruthless gangster.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            )),
        sheight,
        videowithmuteicon(),
        sheight,
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.send,
                    color: whitee,
                    size: 25,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              swidth,
              Column(
                children: [
                  Icon(
                    Icons.add,
                    size: 30,
                    color: whitee,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              swidth,
              Column(
                children: [
                  Icon(
                    Icons.play_arrow,
                    size: 30,
                    color: whitee,
                  ),
                  Text(
                    "Play",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
