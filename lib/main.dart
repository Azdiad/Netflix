import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/textstyle.dart';
import 'package:netflix/widgets/bottomNav.dart';

void main() {
  runApp(const netflixclone());
}

class netflixclone extends StatelessWidget {
  const netflixclone({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowIndicator();

        return true;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NETFLIX',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: whitee),
              color: backgroundcolor,
            ),
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.blue, backgroundColor: backgroundcolor),
            fontFamily: GoogleFonts.montserrat().fontFamily),
        home: BottomBar(),
      ),
    );
  }
}
