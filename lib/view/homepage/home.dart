import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/key/apikey.dart';
import 'package:netflix/view/homepage/widgets/maincard.dart';
import 'package:netflix/view/homepage/widgets/numCard.dart';
import 'package:netflix/widgets/title.dart';
import 'package:tmdb_api/tmdb_api.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List trendingmovies = [];
  List popularmovies = [];
  List tv = [];
  List nowplayings = [];
  @override
  void initState() {
    loadmovies();
    super.initState();
  }

  loadmovies() async {
    TMDB tmdbcustomlogs = TMDB(ApiKeys(apikey, readaccestoken),
        logConfig: ConfigLogger(
          showLogs: true,
          showErrorLogs: true,
        ));
    Map trendingresult = await tmdbcustomlogs.v3.trending.getTrending();
    Map nowplaying = await tmdbcustomlogs.v3.movies.getNowPlaying();
    Map popularresult = await tmdbcustomlogs.v3.movies.getTopRated();
    Map tvresult = await tmdbcustomlogs.v3.tv.getPopular();

    setState(() {
      trendingmovies = trendingresult['results'];
      popularmovies = popularresult['results'];
      tv = tvresult['results'];
      nowplayings = nowplaying['results'];
    });
    print(trendingmovies);
  }

  @override
  Widget build(BuildContext context) {
    if (trendingmovies.isEmpty ||
        popularmovies.isEmpty ||
        tv.isEmpty ||
        nowplayings.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (trendingmovies.isEmpty ||
        popularmovies.isEmpty ||
        tv.isEmpty ||
        nowplayings.isEmpty ||
        trendingmovies.length < 0 ||
        popularmovies.length < 0 ||
        tv.length < 0 ||
        nowplayings.length < 0) {
      return const Center(
        child: Text('Movies Not available.'),
      );
    }
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
                children: List.generate(
                    10,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 250,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w300' +
                                            trendingmovies[index]
                                                ['poster_path']),
                                    fit: BoxFit.cover),
                                borderRadius: cardRadius20),
                          ),
                        )),
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
                children: List.generate(
                    10,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 250,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w300' +
                                            nowplayings[index]['poster_path']),
                                    fit: BoxFit.cover),
                                borderRadius: cardRadius20),
                          ),
                        )),
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
                    (index) => Stack(
                          children: [
                            Row(
                              children: [
                                const SizedBox(height: 200, width: 50),
                                Container(
                                  height: 200,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://image.tmdb.org/t/p/w300' +
                                                  popularmovies[index]
                                                      ['poster_path']),
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
                        )),
              ),
            ),
            sheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                swidth,
                titleof(title: 'Popular'),
              ],
            ),
            sheight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    10,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 250,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w300' +
                                            trendingmovies[index]
                                                ['poster_path']),
                                    fit: BoxFit.cover),
                                borderRadius: cardRadius20),
                          ),
                        )),
              ),
            ),
            sheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                swidth,
                titleof(title: 'Popular Cinema'),
              ],
            ),
            sheight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    10,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 250,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w300' +
                                            popularmovies[index]
                                                ['poster_path']),
                                    fit: BoxFit.cover),
                                borderRadius: cardRadius20),
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
