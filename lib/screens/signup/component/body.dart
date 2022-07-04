import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_project/components/already_have_account_acheck.dart';
import 'package:login_project/components/rounded_button.dart';
import 'package:login_project/components/rounded_input_field.dart';
import 'package:login_project/components/rounded_password_field.dart';
import 'package:login_project/contraints.dart';
import 'package:login_project/screens/login/login_screen.dart';
import 'package:login_project/screens/signup/component/background.dart';
import 'package:login_project/screens/signup/component/or_divider.dart';
import 'package:login_project/screens/signup/component/social_icon.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SignUp",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(hintText: "Your Mail", onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(text: "SIGN UP", press: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                    SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                    SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {}
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

