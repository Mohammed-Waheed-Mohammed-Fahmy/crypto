import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class cusomcard extends StatelessWidget {
  final String coinName;
  final String coinPrice;
  final String percentage1;
  final String percentage2;
  final String subtext;
  final String coinImage;
  final String coinChart;

  cusomcard({
    super.key,
    required this.coinChart,
    required this.coinImage,
    required this.coinName,
    required this.coinPrice,
    required this.percentage1,
    required this.percentage2,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        width: screenW * 0.9,
        height: screenH * 0.12,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            offset: Offset(0, 4), // Shadow directly below the container
            blurRadius: 2, // Softness of the shadow
            spreadRadius: 1, // Size of the shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Positioned(
                top: 13,
                left: 19,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(coinImage), fit: BoxFit.cover)),
                )),
            Positioned(
                top: 25,
                left: 88,
                child: Text(
                  coinName,
                  style: GoogleFonts.cairo(fontWeight: FontWeight.w600),
                )),
            Positioned(
                left: 88,
                top: 45,
                child: Text(
                  subtext,
                  style: GoogleFonts.cairo(color: Colors.grey),
                )),
            Positioned(
                top: 4,
                left: 160,
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(coinChart))),
                )),
            Positioned(
                right: 17,
                top: 25,
                child: Text(
                  coinPrice,
                  style: GoogleFonts.cairo(),
                )),
            Positioned(
                right: 6,
                top: 41,
                child: Text(
                  percentage2,
                  style: GoogleFonts.cairo(),
                )),
            Positioned(
                right: 50,
                top: 41,
                child: Text(
                  percentage1,
                  style: GoogleFonts.cairo(color: Colors.grey),
                ))
          ],
        ),
      ),
    );
  }
}
