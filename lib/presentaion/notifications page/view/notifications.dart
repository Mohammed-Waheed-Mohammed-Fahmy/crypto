import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/notifications%20page/widget/customNotification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "الإشعارات",
          style: GoogleFonts.cairo(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      body: BlocBuilder<DexBloc, DexState>(
        builder: (context, state) {
          return SafeArea(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: screenW * 0.9,
                    height: screenH * 0.8,
                    child: ListView.builder(
                        itemCount: state.notify.length,
                        itemBuilder: (context, index) {
                          return Customnotification(
                              date: state.notify[index].date,
                              mainText: state.notify[index].mainText,
                              subText: state.notify[index].subText);
                        }),
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
