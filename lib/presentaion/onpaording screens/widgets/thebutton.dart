import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/onpaording%20screens/widgets/buttonToMove.dart';
import 'package:app/presentaion/onpaording%20screens/widgets/buttonTostart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Thebutton extends StatelessWidget {
  const Thebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return state.updatedValue == 2 ? Buttontostart() : Buttontomove();
      },
    );
  }
}
