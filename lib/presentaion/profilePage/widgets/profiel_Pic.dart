import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfielPic extends StatelessWidget {
  const ProfielPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Border around the profile picture
          Container(
            width: 0.3.sw, // Responsive width (30% of screen width)
            height: 0.3
                .sw, // Responsive height (30% of screen width to maintain circle shape)
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: Color.fromRGBO(14, 74, 98, 1), width: 4),
            ),
          ),

          // Profile picture
          Container(
            width: 0.25.sw, // Responsive width (25% of screen width)
            height: 0.25
                .sw, // Responsive height (25% of screen width to maintain circle shape)
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/profiel/woman.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              borderRadius:
                  BorderRadius.circular(100), // Keep the circular shape
            ),
          ),

          // Top star decoration
          Positioned(
            top: 0,
            left: 0,
            child: Icon(
              Icons.star,
              color: Color.fromRGBO(14, 74, 98, 1),
              size: 20.sp, // Responsive icon size
            ),
          ),

          // Right star decoration
          Positioned(
            right: 0,
            top: 0,
            child: Icon(
              Icons.star,
              color: Color.fromRGBO(14, 74, 98, 1),
              size: 20.sp, // Responsive icon size
            ),
          ),

          // Bottom star decoration
          Positioned(
            bottom: 0,
            left: 0,
            child: Icon(
              Icons.star_border,
              color: Color.fromRGBO(14, 74, 98, 1),
              size: 20.sp, // Responsive icon size
            ),
          ),
        ],
      ),
    );
  }
}
