import 'package:app/bloc/dex_bloc.dart';
import 'package:app/main.dart';
import 'package:app/presentaion/mianPage/widgets/cards_section_one.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sectionindecator extends StatelessWidget {
  Sectionindecator({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              height: 35.h,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    offset: Offset(0, 4), // Shadow directly below the container
                    blurRadius: 2, // Softness of the shadow
                    spreadRadius: 1, // Size of the shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(14, 74, 98, 1),
              ),
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.white, // Active background color
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  labelColor: Color.fromRGBO(14, 74, 98, 1), // Active tab color
                  unselectedLabelColor: Colors.white,
                  dividerColor: Colors.transparent, // Inactive tab color

                  tabs: [
                    Tab(
                      text: "سوق الأسهم",
                    ),
                    Tab(text: "عالم الأموال"),
                    Tab(
                      text: "العملات الرقمية",
                    ),
                  ]),
            ),
            Expanded(
              child: SizedBox(
                width: screenW * 1,
                height: 0.298.sh,
                child: TabBarView(children: [
                  CardsSectionOne(),
                  CardsSectionOne(),
                  CardsSectionOne()
                ]),
              ),
            ),
          ],
        );
      },
    );
  }
}
