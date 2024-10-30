import 'package:app/presentaion/onpaording%20screens/widgets/indicator.dart';
import 'package:app/presentaion/onpaording%20screens/widgets/pageview.dart';
import 'package:app/presentaion/onpaording%20screens/widgets/thebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onpoardingscreen extends StatelessWidget {
  const Onpoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h, // Responsive height
              ),
              Expanded(
                // Use Expanded to fill the remaining space
                child: Pageview(),
              ),
              SizedBox(
                height: 41.h, // Responsive height
              ),
              Indicator(),
              SizedBox(
                height: 20.h, // Responsive height
              ),
              Thebutton(),
            ],
          ),
        ),
      ),
    );
  }
}
