import 'package:flutter/material.dart';
import 'package:netflix/view/downloads/downloads.dart';
import 'package:netflix/view/fastLaugh/fastlaugh.dart';
import 'package:netflix/view/homepage/home.dart';
import 'package:netflix/view/new&hot/new&hot.dart';
import 'package:netflix/view/searchpage.dart/searchpage.dart';

class BottomBar extends StatefulWidget {
  final int initialIndex;

  BottomBar({this.initialIndex = 0});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List tabs = [
    homepage(),
    newhits(),
    fastlaugh(),
    searchpage(),
    downloads()
  ];
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs.elementAt(_currentIndex),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[600],
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie_outlined),
                label: 'New&Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.tag_faces_outlined),
                label: 'FastLaugh',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search  ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: 'Downloads',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
