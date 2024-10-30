import 'package:app/bloc/dex_bloc.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Selectedcard extends StatelessWidget {
  const Selectedcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        print(state.pagenumber);
        return Column(
          children: [
            Container(
              height: screenH * 0.3,
              width: screenW * 0.92,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(10),
                child: Hero(
                  tag:
                      "tag-${state.cards_section[state.pagenumber!].imagepath}",
                  child: Image(
                    image: AssetImage(
                        state.cards_section[state.pagenumber!].imagepath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              textAlign: TextAlign.right,
              state.cards_section[state.pagenumber!].BodyText,
              style: GoogleFonts.cairo(
                  fontWeight: FontWeight.w500, fontSize: 12.sp, height: 2),
            ),
          ],
        );
      },
    );
  }
}
