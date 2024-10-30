import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/offers_extended/view/offersExtended.dart';
import 'package:app/presentaion/offers_extended/view/selectedPage.dart';
import 'package:app/presentaion/splashScreen/splashScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 786),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DexBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              scaffoldBackgroundColor:
                  Colors.white, // Global scaffold background color
              appBarTheme: AppBarTheme(
                color: Colors.white, // App bar color
              )),
          home: SplashScreen(),
          routes: {
            'offersExtended': (context) => Offersextended(),
            'Selectedpage': (context) => Selectedpage(),
          },
        ),
      ),
    );
  }
}
