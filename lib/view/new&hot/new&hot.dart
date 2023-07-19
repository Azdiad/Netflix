import 'package:flutter/material.dart';
import 'package:netflix/constants/constat.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/view/new&hot/widgets/tabs.dart';

class newhits extends StatefulWidget {
  const newhits({super.key});

  @override
  State<newhits> createState() => _newhitsState();
}

class _newhitsState extends State<newhits> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: backgroundcolor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: Text(
                'New & Hot',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              actions: [
                Icon(
                  Icons.cast,
                  color: whitee,
                  size: 30,
                ),
                swidth,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.purpleAccent,
                  ),
                ),
                swidth,
              ],
              bottom: const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                    color: whitee,
                    borderRadius: cardRadius30,
                  ),
                  tabs: [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 Everyone's Watching",
                    ),
                  ]),
            ),
          ),
          body: TabBarView(children: [buildComingSoon(), buildEveryones()])),
    );
  }
}
