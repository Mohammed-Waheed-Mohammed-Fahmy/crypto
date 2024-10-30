import 'package:app/bloc/dex_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    final bloc = context.read<DexBloc>();
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return SizedBox(
          height: screenH * 0.6,
          child: PageView.builder(
              onPageChanged: (index) {
                bloc.add(UpdatePageValue(index));
              },
              controller: state.key,
              itemCount: state.poardinData.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: screenW * 0.9,
                      height: screenH * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('${state.poardinData[index].images}'),
                          fit: BoxFit
                              .cover, // You can use other BoxFit values like contain, fill, etc.
                        ),
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "${state.poardinData[index].maintext}",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromRGBO(14, 74, 98, 1)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("${state.poardinData[index].suptitle}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.cairo(
                            fontSize: 16,
                            color: Color.fromRGBO(149, 149, 149, 1),
                          )),
                    ),
                  ],
                );
              }),
        );
      },
    );
  }
}
