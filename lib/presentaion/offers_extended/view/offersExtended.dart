// ignore_for_file: must_be_immutable
import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/offers_extended/view/selectedPage.dart';
import 'package:app/presentaion/offers_extended/widgets/list_cards.dart';
import 'package:app/presentaion/offers_extended/widgets/scrollingSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Offersextended extends StatelessWidget {
  Offersextended({super.key});

  GlobalKey<NavigatorState> selectedKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "التوصيات",
                style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    child: Stack(
                      children: [
                        Positioned(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications_none)),
                        ),
                        Positioned(
                            right: 17,
                            top: 15,
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            body: SafeArea(
                child: Align(
                    alignment: Alignment.center,
                    child: Column(children: [
                      SizedBox(
                        height: screenH * 0.27,
                        width: screenW * 0.95,
                        child: ListCards(),
                      ),
                      Expanded(
                        child: SizedBox(
                            height: screenH * 0.53,
                            child: Navigator(
                              key: selectedKey,
                              onGenerateRoute: (RouteSettings settings) {
                                return MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  if (settings.name == "Selectedpage") {
                                    print(settings.name);
                                    return Selectedpage();
                                  }

                                  return Scrollingsection();
                                });
                              },
                            )),
                      )
                    ]))));
      },
    );
  }
}
