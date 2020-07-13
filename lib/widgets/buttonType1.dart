import 'package:flutter/material.dart';

class ButtonType1 extends StatefulWidget {
  @override
  _ButtonType1State createState() => _ButtonType1State();
}

class _ButtonType1State extends State<ButtonType1> {
  ButtonType1(String myStr, String val) {
    setState(() {
      if (myStr == "0") {
        myStr = val;
      } else {
        myStr = myStr + val;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return myStr;
  }
}
