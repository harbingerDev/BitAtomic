import 'package:flutter/material.dart';

main() {
  runApp(const BitAtomic());
}
class BitAtomic extends StatelessWidget {
  const BitAtomic({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
     child: Scaffold( 
      body:SplashScreen() ,
     ),
    );
  }
}
