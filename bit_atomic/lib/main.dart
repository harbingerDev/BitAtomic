// ignore_for_file: prefer_const_constructors

import 'package:bit_atomic/pages/splash_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const BitAtomic());
}

class BitAtomic extends StatelessWidget {
  const BitAtomic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BitAtomic",
      // theme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      home: SplashScreen(),
    );
  }
}
