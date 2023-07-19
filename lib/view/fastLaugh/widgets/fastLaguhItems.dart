import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/key/apikey.dart';
import 'package:netflix/view/fastLaugh/righticons.dart';
import 'package:tmdb_api/tmdb_api.dart';

class videolist extends StatefulWidget {
  final int index;

  const videolist({super.key, required this.index});

  @override
  State<videolist> createState() => _videolistState();
}

class _videolistState extends State<videolist> {
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
    if (nowplayings.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (nowplayings.isEmpty || nowplayings.length < 1) {
      return const Center(
        child: Text('No  movies available.'),
      );
    }

    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            'https://image.tmdb.org/t/p/w300' +
                nowplayings[widget.index]['poster_path'],
            fit: BoxFit.cover,
          ),
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
