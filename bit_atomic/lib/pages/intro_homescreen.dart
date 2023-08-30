// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bit_atomic/clock/clockwheelscroll.dart';
import 'package:flutter/material.dart';

class IntroHomeScreen extends StatefulWidget {
  const IntroHomeScreen({super.key});

  @override
  State<IntroHomeScreen> createState() => _IntroHomeScreenState();
}

class _IntroHomeScreenState extends State<IntroHomeScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: _currentPage == 0
                ? Text(
                    'What time do you usually get up?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  )
                : Text(
                    'What time do you usually end your day?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25.0, 17.0, 25.0, 0.0),
            child: _currentPage == 0
                ? Text(
                    'Choose the time you usually start a new day ',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                    textAlign: TextAlign.center,
                  )
                : Text(
                    'We will remind you to finish your checklist before that  ',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
          ),

          //time,
          ClockWheelScroll(),
          SizedBox(
            height: 75,
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                _currentPage++;
              });
            },
            style: ButtonStyle(),
            child: Text('NEXT',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Already have account',
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(),
                      child: Text('login now',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)))),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
