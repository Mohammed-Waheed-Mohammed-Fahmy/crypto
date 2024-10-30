import 'package:app/bloc/dex_bloc.dart';
import 'package:app/main.dart';
import 'package:app/presentaion/notifications%20page/view/notifications.dart';
import 'package:app/presentaion/offersPage/widget/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Scoundpage extends StatefulWidget {
  Scoundpage({super.key});

  @override
  State<Scoundpage> createState() => _ScoundpageState();
}

class _ScoundpageState extends State<Scoundpage> {
  int? activeIndex; // Track the currently active container

  void _toggleActive(int index) {
    setState(() {
      activeIndex = activeIndex == index ? null : index; // Toggle selection
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "التوصيات",
          style: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp), // Responsive font size
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w), // Responsive padding
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotificationsPage()));
                  },
                  icon: Icon(
                    Icons.notifications_none,
                    size: 24.sp, // Responsive icon size
                  ),
                ),
                Positioned(
                  right: 17.w,
                  top: 15.h,
                  child: CircleAvatar(
                    radius: 3.r, // Responsive radius
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10.w), // Responsive horizontal padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.h, // Responsive spacing
                  ),
                  Text(
                    "احصل على قسم التوصيات",
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp), // Responsive font size
                  ),
                  Text(
                    "احصل على الاشتراك المميز واستفد من مزايا حصرية!",
                    style: GoogleFonts.cairo(
                        color: Colors.grey,
                        fontSize: 12.sp), // Responsive font size
                  ),
                  Container(
                    width:
                        0.5 * screenW, // Responsive width (80% of screen width)
                    height: 0.25 *
                        screenH, // Responsive height (31% of screen height)
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage("assets/images/recomendationPage/9.png"),
                      ),
                    ),
                  ),
                  BlocBuilder<DexBloc, DexState>(
                    builder: (context, state) {
                      return Expanded(
                        child: SizedBox(
                          height: 0.25
                              .sh, // Responsive height (25% of screen height)
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.all(16.w), // Responsive padding
                            itemCount: 2, // Number of tappable containers
                            itemBuilder: (context, index) {
                              return TappableContainer(
                                isTapped: activeIndex == index,
                                onTap: () => _toggleActive(index),
                                maintext: state.offers_cards[index].maintext,
                                subtext: state.offers_cards[index].subtext,
                                contain: state.offers_cards[index].itis,
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  // Removed the previous Expanded widget for the text below the button
                ],
              ),
            ),
            Positioned(
              bottom: 15.h, // Responsive bottom padding
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.w), // Responsive padding
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "offersExtended");
                      },
                      child: Container(
                        width: 0.9.sw, // Responsive width (90% of screen width)
                        height: 0.15
                            .sw, // Responsive height based on width for square ratio
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(14, 74, 98, 1),
                          borderRadius: BorderRadius.circular(
                              10.r), // Responsive border radius
                        ),
                        child: Center(
                          child: Text(
                            "ابدأ النسخة التجريبية المجانية لمدة 30 يومًا",
                            style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontSize: 16.sp, // Responsive font size
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h), // Space between button and text
                    Text(
                      "من خلال تقديم هذا الطلب، فإنك توافق على شروط الخدمة وسياسة الخصوصية. يتم تجديد الاشتراك تلقائيًا ما لم يتم إيقاف التجديد التلقائي قبل 24 ساعة على الأقل من نهاية الفترة الحالية.",
                      style: GoogleFonts.cairo(
                        fontSize: 9.sp, // Responsive font size
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(14, 74, 98, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
