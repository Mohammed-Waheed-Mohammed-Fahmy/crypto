import 'package:app/bloc/dex_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttontomove extends StatelessWidget {
  const Buttontomove({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            state.key.nextPage(
                duration: Duration(milliseconds: 600), curve: Curves.easeIn);
          },
          child: Container(
              width: screenH,
              height: 60,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(14, 74, 98, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("متابعة",
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      fontSize: 16,
                    )),
              )),
        );
      },
    );
  }
}
