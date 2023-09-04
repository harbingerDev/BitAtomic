// ignore_for_file: prefer_const_constructors

import 'package:bit_atomic/pages/intro_homescreen.dart';
import 'package:bit_atomic/pages/widgets/sharedpreferences.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black87,
                      width: 0.1,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 25, 8),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      // Image.asset('assets/icons/envelope-regular.svg'),
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 182, 181, 181))
                      //  hintText: 'Enter your email',
                      ),
                  validator: (value) {
                    value!.isEmpty ? "Please enter your email" : null;
                    value.characters.isEmpty ? "Please enter your email" : null;
                    return null;
                    //regex
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black87,
                      width: 0.1,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 25, 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.lock),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 182, 181, 181)),
                  ),
                  validator: (value) {
                    value!.isEmpty ? "Please enter your password" : null;
                    value.characters.length <= 8
                        ? "Password should be min 8 character"
                        : null;
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 190),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 78, 176, 120),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Signing in..."),
                    ),
                  );
                }
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => IntroHomeScreen()),
                );
                MySharedPref.setloggedInTrue();
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 125, 90),
                  border: Border.all(
                    color: const Color.fromARGB(221, 255, 255, 255),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
              ),
            )
          ],
        ));
  }
}
