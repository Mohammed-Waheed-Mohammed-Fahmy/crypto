import 'package:app/bloc/dex_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedNews extends StatelessWidget {
  const SelectedNews({
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
                        tag: "tag-${state.news[state.pagenumber!].imagepath}",
                        child: Image(
                          image: AssetImage(
                              state.news[state.pagenumber!].imagepath),
                          fit: BoxFit.cover,
                        ),
                        flightShuttleBuilder: (flightContext, animation,
                            flightDirection, fromHeroContext, toHeroContext) {
                          return AnimatedBuilder(
                              animation: animation,
                              builder: (context, child) {
                                final width = Tween<double>(
                                  begin: screenW * 0.7,
                                  end: screenW * 0.92,
                                )
                                    .animate(CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.easeInOut,
                                    ))
                                    .value;

                                final height = Tween<double>(
                                  begin: screenH * 0.4,
                                  end: screenH * 0.3,
                                )
                                    .animate(CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.easeInOut,
                                    ))
                                    .value;
                                return Container(
                                  width: width,
                                  height: height,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                );
                              });
                        }))),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                textAlign: TextAlign.right,
                state.news[state.pagenumber!].BodyText,
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w700, fontSize: 12, height: 2),
              ),
            ),
          ],
        );
      },
    );
  }
}
