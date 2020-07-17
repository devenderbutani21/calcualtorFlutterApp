import 'package:flutter/material.dart';
import '.././constant_terms.dart';

class ButtonType2 extends StatefulWidget {
  final String val;
  final MediaQueryData mediaQuery;
  final Function callBack;

  ButtonType2(this.val, this.mediaQuery, this.callBack);

  @override
  _ButtonType2State createState() => _ButtonType2State();
}

class _ButtonType2State extends State<ButtonType2> {
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
