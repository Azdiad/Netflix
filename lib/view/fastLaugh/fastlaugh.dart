import 'package:flutter/material.dart';
import 'package:netflix/view/fastLaugh/widgets/fastLaguhItems.dart';

class fastlaugh extends StatelessWidget {
  const fastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          10,
          (index) {
            return videolist(index: index);
          },
        ),
      )),
    );
  }
}
