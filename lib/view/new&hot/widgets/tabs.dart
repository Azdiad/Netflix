import 'package:flutter/material.dart';
import 'package:netflix/view/new&hot/widgets/comingsoon.dart';
import 'package:netflix/view/new&hot/widgets/everyones.dart';

Widget buildcomingsoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => const comingSoonWidget(),
  );
}

buildeveryones() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => const everyoneswatchingwidget(),
  );
}
