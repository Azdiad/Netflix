// import 'package:flutter/material.dart';
// import 'package:netflix/constants/constat.dart';

// class maincards extends StatelessWidget {
//   const maincards({
//     super.key,
//     required this.trendingmovies,
//   });

//   final List trendingmovies;

//   @override
//   Widget build(BuildContext context) {
//     return LimitedBox(
//       maxHeight: 200,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: List.generate(
//             10,
//             (index) => Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: Container(
//                     height: 250,
//                     width: 150,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://image.tmdb.org/t/p/w500' +
//                                     trendingmovies[index]['poster_path']),
//                             fit: BoxFit.cover),
//                         borderRadius: cardRadius20),
//                   ),
//                 )),
//       ),
//     );
//   }
// }
