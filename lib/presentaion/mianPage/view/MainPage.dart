import 'package:app/presentaion/mianPage/widgets/mian_page_view.dart';
import 'package:app/presentaion/mianPage/widgets/sectionIndecator.dart';
import 'package:app/presentaion/notifications%20page/view/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "الصفحة الرئيسية",
              style:
                  GoogleFonts.cairo(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NotificationsPage()));
                    },
                    icon: Icon(Icons.notifications_none)),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MianPageView(),
              SizedBox(
                height: 9.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.r),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "أخر الأخبار والتطورات",
                    style: GoogleFonts.cairo(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(child: Sectionindecator()),
            ],
          ))),
    );
  }
}
