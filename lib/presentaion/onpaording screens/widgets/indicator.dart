import 'package:app/bloc/dex_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return SmoothPageIndicator(
          controller: state.key,
          count: state.poardinData.length,
          onDotClicked: (index) => state.key.animateToPage(index,
              curve: Curves.easeIn, duration: Duration(milliseconds: 500)),
          effect: WormEffect(
              spacing: 10,
              dotWidth: 9,
              dotHeight: 9,
              activeDotColor: Color.fromRGBO(14, 74, 98, 1),
              dotColor: Color.fromRGBO(169, 169, 169, 0.4)),
        );
      },
    );
  }
}
