// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bit_atomic/pages/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToRequiredPageAfterFewSec();
  }

  void _navigateToRequiredPageAfterFewSec() async {
    await Future.delayed(Duration(seconds: 15), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const IntroScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final fontstop = GoogleFonts.roboto(
        textStyle: Theme.of(context).textTheme.headlineMedium,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 22);
    final fontsbottom = GoogleFonts.roboto(
        textStyle: Theme.of(context).textTheme.headlineMedium,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 20);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: Text(
                'HABIT TRACKER & GOAL PLANNER',
                style: fontstop,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Image.asset(
                "assets/images/icongreenfinal01.png",
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
//icons

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 35.0),
              child: Text(
                'CREATE GOOD HABITS  AND  BREAK BAD ONES NOW !',
                style: fontsbottom,
                textAlign: TextAlign.center,
              ),
            ),

//line for 3 sec running
            // LoadingAnimationWidget.twistingDots(
            //     leftDotColor: Color(0xFF08BC83),
            //     rightDotColor: Color(0xFF08BC83),
            //     size: 50)
            // LoadingAnimationWidget.dotsTriangle(
            //     color: Color(0xFCBFF48A), size: 70)
          ],
        ),
      ),
    );
  }
}
