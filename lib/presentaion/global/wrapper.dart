import 'package:app/presentaion/mianPage/view/MainPage.dart';
import 'package:app/presentaion/notifications%20page/view/notifications.dart';
import 'package:app/presentaion/offersPage/view/wrapper_buttom.dart';
import 'package:app/presentaion/profilePage/view/profilePage.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  List<Widget> body = [
    Profilepage(),
    NotificationsPage(),
    offers_page(),
    Mainpage()
  ];
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[index],
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GNav(
              color: Colors.white,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              padding: EdgeInsets.all(10),
              style: GnavStyle.google,
              curve: Curves.ease,
              duration: Duration(seconds: 0),
              tabBackgroundColor: Colors.white,
              backgroundColor: Color.fromRGBO(14, 74, 98, 1),
              activeColor: Color.fromRGBO(14, 74, 98, 1),
              tabBorderRadius: 100,
              selectedIndex: index,
              onTabChange: (value) => setState(() {
                    index = value;
                  }),
              tabs: [
                GButton(icon: Ionicons.person_outline),
                GButton(icon: Ionicons.notifications_outline),
                GButton(icon: Ionicons.cash_outline),
                GButton(icon: Ionicons.home_outline),
              ]),
        ),
      ),
    );
  }
}
