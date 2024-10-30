import 'package:app/bloc/dex_bloc.dart';

import 'package:app/presentaion/offers_extended/widgets/news_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsViewAnimated extends StatelessWidget {
  const NewsViewAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double screenW = MediaQuery.of(context).size.width;

    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: state.news.length,
            itemBuilder: (context, index, lol) {
              return NewsContainer(
                maintext: state.news[index].maintext,
                imagepath: state.news[index].imagepath,
                onTtap: () {
                  context.read<DexBloc>().add(getPageNumber(page_index: index));
                  Navigator.pushNamed(context, "Selectedpage");
                },
              );
            },
            options: CarouselOptions(
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                height: screenH * 0.1,
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
