import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/key/apikey.dart';
import 'package:netflix/widgets/videowithmute.dart';
import 'package:tmdb_api/tmdb_api.dart';

class ComingSoonWidget extends StatefulWidget {
  const ComingSoonWidget({Key? key});

  @override
  _ComingSoonWidgetState createState() => _ComingSoonWidgetState();
}

class _ComingSoonWidgetState extends State<ComingSoonWidget> {
  late Future<Map> movieDetails;

  @override
  void initState() {
    super.initState();
    movieDetails = fetchMovieDetails();
  }

  Future<Map> fetchMovieDetails() async {
    TMDB tmdb = TMDB(ApiKeys(apikey, readaccestoken));
    Map trendingResult = await tmdb.v3.trending.getTrending();
    return trendingResult;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FutureBuilder<Map>(
      future: movieDetails,
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        }

        List<dynamic> movieData = snapshot.data!['results'];

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
              ),
            ),
            SizedBox(
              width: size.width - 60,
              height: 490,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  videowithmuteicon(),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          movieData[0]['title'],
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
                                    "Remind me",
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
                                  "Info",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  sheight,
                  Row(
                    children: [
                      Text(
                        "Coming On Monday",
                        style: TextStyle(color: whitee),
                      )
                    ],
                  ),
                  sheight,
                  Row(
                    children: [
                      Text(
                        movieData[0]['title'],
                        style: TextStyle(
                            color: whitee,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      movieData[0]['overview'],
                      style: TextStyle(
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
      },
    );
  }
}
