import 'package:app/presentaion/offers_extended/widgets/news_view_animated.dart';
import 'package:app/presentaion/offers_extended/widgets/news_virtical.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Scrollingsection extends StatelessWidget {
  const Scrollingsection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double screenW = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "قسم تحقيق الأرباح",
              style:
                  GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: screenH * 0.4,
          width: double.infinity,
          child: NewsViewAnimated(),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "قسم التوصيات",
              style:
                  GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 900,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: NewsVirtical(),
            )),
      ],
    );
  }
}
