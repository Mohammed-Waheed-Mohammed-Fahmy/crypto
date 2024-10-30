import 'package:app/bloc/dex_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsContainer extends StatelessWidget {
  final String imagepath;
  final String maintext;
  final Function()? onTtap;
  NewsContainer(
      {super.key,
      required this.imagepath,
      required this.maintext,
      required this.onTtap});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return InkWell(
          onTap: onTtap,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: screenW * 0.7,
            height: screenH * 0.4,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  offset: Offset(0, 4), // Shadow directly below the container
                  blurRadius: 2, // Softness of the shadow
                  spreadRadius: 1, // Size of the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ClipRRect(
              child: Column(
                children: [
                  SizedBox(
                      width: screenW * 1,
                      height: screenH * 0.3,
                      child: Image.asset(
                        imagepath,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      maintext,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
