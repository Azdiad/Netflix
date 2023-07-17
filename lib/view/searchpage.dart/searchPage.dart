import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/view/searchpage.dart/searchresult.dart';

const imageurl =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKI_KvOECuX-CHEuRwsDAWIa8-sapIf0FEXg&usqp=CAU";

class searchpage extends StatelessWidget {
  const searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey[800],
              itemColor: Colors.grey,
              style: const TextStyle(color: whitee),
            ),
            sheight,
            // Expanded(child: const searchideal()),
            Expanded(child: const result())
          ],
        ),
      )),
    );
  }
}
