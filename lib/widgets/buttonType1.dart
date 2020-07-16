import 'package:flutter/material.dart';
import '.././constant_terms.dart';

// ignore: must_be_immutable
class ButtonType1 extends StatefulWidget {
  final String val;
  final MediaQueryData mediaQuery;
  final Function callBack;

  ButtonType1(this.val, this.mediaQuery, this.callBack);

  @override
  _ButtonType1State createState() => _ButtonType1State();
}

class _ButtonType1State extends State<ButtonType1> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        widget.val,
        style: TextStyle(color: Colors.white, fontSize: 32 * widget.mediaQuery.textScaleFactor),
      ),
      onPressed: () => widget.callBack(widget.val),
      elevation: 2.0,
      fillColor: color2,
      padding: EdgeInsets.all(17.5),
      shape: CircleBorder(),
    );
  }
}
