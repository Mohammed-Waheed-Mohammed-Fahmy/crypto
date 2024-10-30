import 'package:app/presentaion/profilePage/widgets/lolsection.dart';
import 'package:app/presentaion/profilePage/widgets/profiel_Pic.dart';
import 'package:app/presentaion/profilePage/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "data",
            style: GoogleFonts.cairo(fontWeight: FontWeight.w800, fontSize: 18),
          ),
        ),
        body: SafeArea(
            child: Center(
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              ProfileCard(),
                              ProfielPic(),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Lolsection(),
                        ])))));
  }
}
