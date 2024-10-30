// ignore_for_file: must_be_immutable

import 'package:app/presentaion/offersPage/view/recommendationPage.dart';
import 'package:app/presentaion/offers_extended/view/offersExtended.dart';
import 'package:flutter/material.dart';

class offers_page extends StatelessWidget {
  offers_page({super.key});
  GlobalKey<NavigatorState> recommendationKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: recommendationKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          if (settings.name == "offersExtended") {
            print(settings.name);
            return Offersextended();
          }

          return Scoundpage();
        });
      },
    );
  }
}
