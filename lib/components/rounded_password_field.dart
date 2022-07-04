import 'package:flutter/material.dart';
import 'package:login_project/components/text_field.dart';
import 'package:login_project/contraints.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged ;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText:"Password",
          icon: Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: Icon(Icons.visibility, color:kPrimaryColor),
          border:InputBorder.none,
        ),
      ),
    );
  }
}
