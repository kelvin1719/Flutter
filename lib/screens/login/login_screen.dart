import 'package:flutter/material.dart';
import 'package:login_project/screens/login/component/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Body(),
    );
  }
}

