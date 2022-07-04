import 'package:flutter/material.dart';

import '../../../contraints.dart';
class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          BuilderDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          BuilderDivider(),
        ],
      ),
    );
  }

  Expanded BuilderDivider() {
    return Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        );
  }
}
