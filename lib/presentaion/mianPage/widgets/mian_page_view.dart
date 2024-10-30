import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/mianPage/widgets/custompages.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MianPageView extends StatelessWidget {
  const MianPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: state.pages.length,
            itemBuilder: (context, index, lol) {
              return Custompages(
                  imagepath: state.pages[index].imagepath,
                  mainText: state.pages[index].mainText,
                  sybText: state.pages[index].sybText);
            },
            options: CarouselOptions(
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                height: 300,
                disableCenter: true,
                enableInfiniteScroll: false,
                initialPage: 1,
                enlargeCenterPage: true),
          ),
        );
      },
    );
  }
}
