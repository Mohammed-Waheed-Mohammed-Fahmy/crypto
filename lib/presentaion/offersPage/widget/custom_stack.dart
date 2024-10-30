// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TappableContainer extends StatelessWidget {
  final bool isTapped;

  final VoidCallback onTap;
  final String maintext;
  final String subtext;
  int contain;

  TappableContainer({
    required this.isTapped,
    required this.onTap,
    required this.maintext,
    required this.subtext,
    this.contain = 1,
  });

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(vertical: 5),
        duration: Duration(milliseconds: 200),
        width: screenW * 0.9,
        // Set your preferred width
        height: screenH * 0.1, // Set your preferred height
        decoration: BoxDecoration(
          color: isTapped
              ? Color.fromRGBO(228, 231, 237, 0.4)
              : Color.fromRGBO(228, 231, 237, 1),
          border: isTapped
              ? Border.all(color: Color.fromRGBO(14, 74, 98, 1), width: 2)
              : Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
          boxShadow: isTapped
              ? [] // No shadow when tapped
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
        ),
        child: Center(
            child: Stack(
          children: [
            Positioned(
                top: 9,
                right: 15,
                bottom: 39,
                child: Text(
                  maintext,
                  style: GoogleFonts.cairo(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(14, 74, 98, 1)),
                )),
            Positioned(
                right: 14,
                bottom: 16,
                child: Text(
                  subtext,
                  style: GoogleFonts.cairo(
                      fontSize: 14, color: Color.fromRGBO(14, 74, 98, 1)),
                )),
            if (contain == 0)
              Positioned(
                  left: screenW * 0.019,
                  top: screenW * 0.019,
                  child: Container(
                    width: screenW * 0.23,
                    height: screenH * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        "القيمة الأفضل",
                        style: GoogleFonts.cairo(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 11),
                      ),
                    ),
                  ))
          ],
        )),
      ),
    );
  }
}
