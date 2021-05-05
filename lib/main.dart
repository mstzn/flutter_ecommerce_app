import 'package:ecommerce_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: getColor(0xFFC5380D),
        primarySwatch: getColor(0xFFC5380D),
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
      home: SplashScreen(),
    );
  }
}
