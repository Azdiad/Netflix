import 'package:flutter/material.dart';
import 'package:netflix/view/new&hot/widgets/comingsoon.dart';
import 'package:netflix/view/new&hot/widgets/everyones.dart';

Widget buildComingSoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => ComingSoonWidget(index: index),
  );
}

Widget buildEveryones() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => everyoneswatchingwidget(index: index),
  );
}
