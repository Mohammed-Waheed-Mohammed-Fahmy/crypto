import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/main_info_page/widgets/selectedCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MainInfoPage extends StatelessWidget {
  const MainInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<DexBloc, DexState>(
            builder: (context, state) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 30,
                          color: Colors.black,
                        )),
                  ),
                  Text(
                    state.cards_section[state.pagenumber!].mainText,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: screenW * 0.9,
                      height: screenH * 0.76,
                      child: ListView(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "فلسطين ,15 يناير 2024",
                              style: GoogleFonts.cairo(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: screenW * 0.23,
                              height: screenH * 0.03,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromRGBO(14, 74, 98, 1),
                              ),
                              child: Center(
                                child: Text(
                                  "سوق الاسهم",
                                  style: GoogleFonts.cairo(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          SizedBox(child: Selectedcard()),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
