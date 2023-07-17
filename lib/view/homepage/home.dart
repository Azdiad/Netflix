import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/view/homepage/widgets/maincard.dart';
import 'package:netflix/view/homepage/widgets/numCard.dart';
import 'package:netflix/widgets/title.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://source.boomplaymusic.com/buzzgroup2/M00/3A/35/rBEeJGLnnUeAHe3pAAKUivJrWaA717.jpg",
                      ),
                      fit: BoxFit.contain)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              child: Image.network(
                            "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456",
                            height: 50,
                          )),
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
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Row(children: [
                              Text(
                                "TV Shows",
                                style: TextStyle(color: whitee, fontSize: 20),
                              ),
                              swidth,
                              Text(
                                "Movies",
                                style: TextStyle(color: whitee, fontSize: 20),
                              ),
                              swidth,
                              Text(
                                "Categories",
                                style: TextStyle(color: whitee, fontSize: 20),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.add, color: Colors.white, size: 30),
                          Text(
                            "My List",
                            style: TextStyle(color: whitee),
                          ),
                        ],
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow,
                          color: backgroundcolor,
                          size: 30,
                        ),
                        label: const Text(
                          " Play",
                          style: TextStyle(
                              color: backgroundcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.info_outline_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(color: whitee),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            sheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                swidth,
                titleof(title: 'Released in the past year '),
              ],
            ),
            sheight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => const maincard()),
              ),
            ),
            sheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                swidth,
                titleof(title: 'Trending Now'),
              ],
            ),
            sheight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => const maincard()),
              ),
            ),
            sheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                swidth,
                titleof(title: 'Top 10 Movies In India Today'),
              ],
            ),
            sheight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    10,
                    (index) => numcard(
                          index: index,
                        )),
              ),
            ),
            sheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                swidth,
                titleof(title: 'Tense Darama'),
              ],
            ),
            sheight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => const maincard()),
              ),
            ),
            sheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                swidth,
                titleof(title: 'South Indian Cinema'),
              ],
            ),
            sheight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => const maincard()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
