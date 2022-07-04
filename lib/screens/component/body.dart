import 'dart:ui';

import "package:flutter/material.dart";
import 'package:login_project/components/rounded_button.dart';
import 'package:login_project/contraints.dart';
import 'package:flutter_svg/svg.dart';

import 'package:login_project/screens/component/background.dart';
import 'package:login_project/screens/login/login_screen.dart';
import 'package:login_project/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //THis provides us with the height and width
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.04),
            SvgPicture.asset('assets/icons/chat.svg',
                height: size.height * 0.45),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                return SignUpScreen();
              }));},
            ),
          ],
        ),
      ),
    );
  }
}
