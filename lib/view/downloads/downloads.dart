import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/key/apikey.dart';
import 'package:netflix/widgets/appbarwidget.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Downloads extends StatefulWidget {
  Downloads({Key? key}) : super(key: key);

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  List nowplayings = [];

  @override
  void initState() {
    super.initState();
    loadmovies();
  }

  Future<void> loadmovies() async {
    TMDB tmdbcustomlogs = TMDB(ApiKeys(apikey, readaccestoken),
        logConfig: ConfigLogger(
          showLogs: true,
          showErrorLogs: true,
        ));

    Map nowplaying = await tmdbcustomlogs.v3.movies.getNowPlaying();

    setState(() {
      nowplayings = nowplaying['results'];
    });
    print(nowplaying);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final List<NetworkImage> imagesList = [
      NetworkImage(
          'https://image.tmdb.org/t/p/w300' + nowplayings[0]['poster_path']),
      NetworkImage(
          'https://image.tmdb.org/t/p/w300' + nowplayings[1]['poster_path']),
      NetworkImage(
          'https://image.tmdb.org/t/p/w300' + nowplayings[3]['poster_path']),
    ];

    return Scaffold(
      appBar: PreferredSize(
        child: appbarwidget(title: "Downloads"),
        preferredSize: Size.fromHeight(50),
      ),
      backgroundColor: backgroundcolor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Screen downloads',
                  style: headcolor,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'Introducing Downloads for you',
                style: headcolor,
              ),
              SizedBox(height: 8),
              Text(
                "We'll download the personalized section of movies and shows for you, so there's always something to watch on your device.",
                style: TextStyle(color: Colors.grey, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: size.width,
                height: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.45,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                    CenterImages(
                      key: Key('center_image_2'),
                      imageList: imagesList[2],
                      margin: EdgeInsets.only(left: 200, bottom: 50),
                      angle: 20,
                      size: Size(size.width * 0.4, size.height * 0.68),
                    ),
                    CenterImages(
                      key: Key('center_image_1'),
                      imageList: imagesList[1],
                      margin: EdgeInsets.only(right: 200, bottom: 50),
                      angle: -20,
                      size: Size(size.width * 0.4, size.height * 0.68),
                    ),
                    CenterImages(
                      key: Key('center_image_0'),
                      imageList: imagesList[0],
                      margin: EdgeInsets.only(left: 0, bottom: 0),
                      size: Size(size.width * 0.5, size.height * 0.68),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 8),
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
                  fontWeight: FontWeight.bold,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CenterImages extends StatelessWidget {
  final NetworkImage imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  const CenterImages({
    required Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

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
            image: imageList,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
