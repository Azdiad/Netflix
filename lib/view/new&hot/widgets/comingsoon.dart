import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/widgets/videowithmute.dart';

class comingSoonWidget extends StatelessWidget {
  const comingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
            width: 60,
            height: 400,
            child: Column(
              children: [
                Text(
                  "MAY",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "10",
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 6,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
        SizedBox(
          width: size.width - 60,
          height: 400,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                videowithmuteicon(),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "RockyHandsome",
                        style: TextStyle(
                            color: whitee,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.notifications_none_outlined,
                                  color: whitee,
                                  size: 25,
                                ),
                                Text(
                                  "Remind me ",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.info,
                                size: 25,
                                color: whitee,
                              ),
                              Text(
                                "Info ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                sheight,
                const Row(
                  children: [
                    Text(
                      "Coming On monday",
                      style: TextStyle(color: whitee),
                    )
                  ],
                ),
                sheight,
                const Row(
                  children: [
                    Text(
                      "RockyHandsome",
                      style: TextStyle(
                          color: whitee,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "When a drug mafia abducts an eight-year old, her dearest man sets out on a mission with a view of returning the compliment.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
