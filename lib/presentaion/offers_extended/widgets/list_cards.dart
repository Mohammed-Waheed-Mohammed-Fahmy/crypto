import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/offers_extended/widgets/customCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCards extends StatelessWidget {
  const ListCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return ListView.builder(
            physics: ScrollPhysics(),
            itemCount: state.coins_cards.length,
            itemBuilder: (context, index) {
              return cusomcard(
                coinChart: state.coins_cards[index].coinChart,
                coinImage: state.coins_cards[index].coinImage,
                coinName: state.coins_cards[index].coinName,
                coinPrice: state.coins_cards[index].coinPrice,
                percentage1: state.coins_cards[index].percentage1,
                percentage2: state.coins_cards[index].percentage2,
                subtext: state.coins_cards[index].subtext,
              );
            });
      },
    );
  }
}
