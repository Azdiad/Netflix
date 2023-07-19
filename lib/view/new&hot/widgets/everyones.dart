import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/key/apikey.dart';
import 'package:tmdb_api/tmdb_api.dart';

class everyoneswatchingwidget extends StatefulWidget {
  const everyoneswatchingwidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  State<everyoneswatchingwidget> createState() =>
      _everyoneswatchingwidgetState();
}

class _everyoneswatchingwidgetState extends State<everyoneswatchingwidget> {
  List upcoming = [];

  @override
  void initState() {
    loadmovies();
    super.initState();
  }

  loadmovies() async {
    TMDB tmdbcustomlogs = TMDB(
      ApiKeys(apikey, readaccestoken),
      logConfig: const ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map releasedsoon = await tmdbcustomlogs.v3.movies.getPopular();

    setState(() {
      upcoming = releasedsoon['results'];
      print(upcoming);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (upcoming.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (upcoming.isEmpty || upcoming.length < 1) {
      return const Center(
        child: Text('No upcoming movies available.'),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          upcoming[widget.index]['title'],
          style: TextStyle(
              color: whitee, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        // SizedBox(height: 50),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              upcoming[widget.index]['overview'],
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            )),
        sheight,
        // videowithmuteicon(),
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(
                  'https://image.tmdb.org/t/p/w300' +
                      upcoming[widget.index]['poster_path'],
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
        ),
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
