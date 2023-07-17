import 'package:flutter/material.dart';
import 'package:netflix/helpers/textstyle.dart';

class righticons extends StatelessWidget {
  const righticons({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: whitee,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: whitee, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
