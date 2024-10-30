import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customnotification extends StatelessWidget {
  final String mainText;
  final String subText;
  final String date;
  const Customnotification(
      {super.key,
      required this.date,
      required this.mainText,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return Container(
      width: screenW * 0.9,
      height: screenH * 0.132,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 10,
              right: 1,
              child: Text(
                mainText,
                style: GoogleFonts.cairo(
                    fontSize: 18, fontWeight: FontWeight.w800),
              )),
          Positioned(
              left: 10,
              top: 10,
              child: Text(
                date,
                style: GoogleFonts.cairo(
                    fontSize: 18, fontWeight: FontWeight.w500),
              )),
          Positioned(
              top: 35,
              right: 1,
              child: SizedBox(
                width: screenW * 0.9,
                child: Text(
                  textAlign: TextAlign.right,
                  subText,
                  style: GoogleFonts.cairo(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ))
        ],
      ),
    );
  }
}
