import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchtitle extends StatelessWidget {
  searchtitle({
    required this.title,
    super.key,
  });
  final title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold));
  }
}
