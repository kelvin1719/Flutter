import 'package:flutter/material.dart';

class Background extends StatelessWidget {
    final Widget child;

  const Background({
    Key? key, required this.child,
 
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            width: size.width * 0.45,
            child: Image.asset("assets/images/signup_top.png"),
          ),
          Positioned(
            width:size.width * 0.3 ,
            bottom:0,
            left:0,
            child: Image.asset("assets/images/main_bottom.png"),
            ),
            child,

        ],
      ),
    );
  }
}
