import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';

class maincard extends StatelessWidget {
  const maincard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://m.media-amazon.com/images/M/MV5BMjAyMDE2ODU3Ml5BMl5BanBnXkFtZTgwODU0MTA0NjE@._V1_.jpg'),
                fit: BoxFit.cover),
            borderRadius: cardRadius20),
      ),
    );
  }
}
