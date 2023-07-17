import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/widgets/appbarwidget.dart';

class downloads extends StatelessWidget {
  downloads({super.key});

  final List imageslist = [
    "https://m.media-amazon.com/images/M/MV5BM2JmMmE0NjYtODUzNS00ZDg2LTk2ZjMtNDBiNjhlMGU2NjJlXkEyXkFqcGdeQXVyMTQ4NTgxNzYx._V1_.jpg",
    "https://nenow.in/wp-content/uploads/2023/05/image-157.png",
    "https://akm-img-a-in.tosshub.com/sites/visualstory/wp/2023/07/Snapinsta.app_355431527_648558270467187_5594636517855612856_n_1080.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          child: appbarwidget(title: " Downloads"),
          preferredSize: Size.fromHeight(50)),
      backgroundColor: backgroundcolor,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              swidth,
              Text(
                'Screen downloads',
                style: headcolor,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text('Introducing Downloads for you', style: headcolor),
            sheight,
            Text(
              "Well download the personalized section of  movies and shows for you, so there'S  always something to watch on your device",
              style: TextStyle(color: Colors.grey, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: size.width,
              height: size.width,
              child: Stack(alignment: Alignment.center, children: [
                CircleAvatar(
                  radius: size.width * .45,
                  backgroundColor: Colors.grey.withOpacity(.5),
                ),
                centerimages(
                    imageslist: imageslist[2],
                    margin: EdgeInsets.only(left: 200, bottom: 50),
                    angle: 20,
                    size: Size(size.width * 0.4, size.height * 0.68)),
                centerimages(
                    imageslist: imageslist[1],
                    margin: EdgeInsets.only(right: 200, bottom: 50),
                    angle: -20,
                    size: Size(size.width * 0.4, size.height * 0.68)),
                centerimages(
                    imageslist: imageslist[0],
                    margin: EdgeInsets.only(left: 0, bottom: 0),
                    size: Size(size.width * 0.5, size.height * 0.68)),
              ]),
            )
          ],
        ),
        sheight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MaterialButton(
            height: 50,
            color: Colors.blueAccent[700],
            onPressed: () {},
            child: Text(
              'Set Up',
              style: headcolor,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        sheight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
              height: 50,
              color: whitee,
              onPressed: () {},
              child: Text(
                'See what you can Download',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ]),
    );
  }
}

class centerimages extends StatelessWidget {
  centerimages({
    super.key,
    required this.imageslist,
    this.angle = 0,
    required this.size,
    required this.margin,
  });

  final String imageslist;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.width * 1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black,
          image: DecorationImage(
              image: NetworkImage(imageslist), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
