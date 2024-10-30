import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return Container(
      width: screenW * 0.61,
      height: screenH * 0.14,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                textAlign: TextAlign.right,
                "سجى إسماعيل",
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                textAlign: TextAlign.right,
                "louisejoyk@email.com",
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w400, fontSize: 12),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 50,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                child: Text(
                  textAlign: TextAlign.right,
                  "Birmingham, UK",
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
