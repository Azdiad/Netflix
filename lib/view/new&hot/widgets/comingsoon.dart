import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/key/apikey.dart';
import 'package:netflix/widgets/videowithmute.dart';
import 'package:tmdb_api/tmdb_api.dart';

class ComingSoonWidget extends StatefulWidget {
  const ComingSoonWidget({
    Key? key,
    required this.index,
  });
  final int index;

  @override
  _ComingSoonWidgetState createState() => _ComingSoonWidgetState();
}

class _ComingSoonWidgetState extends State<ComingSoonWidget> {
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

    Map releasedsoon = await tmdbcustomlogs.v3.movies.getUpcoming();

    setState(() {
      upcoming = releasedsoon['results'];
      print(upcoming);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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

    return Row(
      children: [
        const SizedBox(
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
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 60,
          height: 490,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w300' +
                          upcoming[widget.index]['poster_path'],
                      fit: BoxFit.cover,
                    ),
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
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      upcoming[widget.index]['title'],
                      style: const TextStyle(
                        color: whitee,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.notifications_none_outlined,
                                color: whitee,
                                size: 25,
                              ),
                              const Text(
                                "Remind me",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
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
                            const Text(
                              "Info",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              sheight,
              Row(
                children: [
                  Text(
                    "Coming On " + upcoming[widget.index]['release_date'],
                    style: TextStyle(color: whitee),
                  ),
                ],
              ),
              sheight,
              Row(
                children: [
                  Text(
                    upcoming[widget.index]['title'],
                    style: const TextStyle(
                      color: whitee,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  upcoming[0]['overview'],
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
