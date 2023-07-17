import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/view/fastLaugh/righticons.dart';

class videolist extends StatelessWidget {
  final int index;

  const videolist({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("FUN",
                style: TextStyle(
                    color: whitee, fontSize: 50, fontWeight: FontWeight.bold)),
            Text(
              " 16+",
              style: TextStyle(
                  color: whitee,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black,
                  letterSpacing: 3),
            ),
          ]),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side mute icon
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.volume_off_sharp),
                      iconSize: 30,
                      color: whitee,
                    )),
                //Right side icons
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://www.koimoi.com/wp-content/new-galleries/2019/11/breaking-hrithik-roshan-opts-out-of-satte-pe-satta-remake-reason-revealed-001.jpg"),
                    ),
                    sheight,
                    righticons(
                        icon: Icons.emoji_emotions_rounded, title: "LOL"),
                    righticons(icon: Icons.add, title: "My List"),
                    righticons(icon: Icons.send, title: "Share"),
                    righticons(icon: Icons.play_arrow_rounded, title: "Play"),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
