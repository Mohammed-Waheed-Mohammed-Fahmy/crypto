import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/main_info_page/view/main_info_page.dart';

import 'package:app/presentaion/mianPage/widgets/sectionCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardsSectionOne extends StatelessWidget {
  const CardsSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 5),
          child: ListView.builder(
              itemCount: state.cards_section.length,
              itemBuilder: (context, index) {
                return SectionCards(
                  imagepath: state.cards_section[index].imagepath,
                  maintext: state.cards_section[index].mainText,
                  subText: state.cards_section[index].subText,
                  onTtap: () async {
                    context
                        .read<DexBloc>()
                        .add(getPageNumber(page_index: index));
                    Future.delayed(Duration(seconds: 1));
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainInfoPage()));
                  },
                  tagImage: state.cards_section[index].imagepath,
                );
              }),
        );
      },
    );
  }
}
