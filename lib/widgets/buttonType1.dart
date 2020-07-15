import 'package:flutter/material.dart';
import '.././constant_terms.dart';

// ignore: must_be_immutable
class ButtonType1 extends StatefulWidget {
  String myStr;
  final String val;
  final MediaQueryData curScaleFactor;

  ButtonType1(this.myStr, this.val, this.curScaleFactor);

  @override
  _ButtonType1State createState() => _ButtonType1State();
}

class _ButtonType1State extends State<ButtonType1> {

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        widget.val,
        style: TextStyle(color: Colors.white, fontSize: 32 * widget.curScaleFactor.textScaleFactor),
      ),
      onPressed: () {
        setState(() {
          if (widget.myStr == "0") {
            widget.myStr = widget.val;
          } else {
            widget.myStr = widget.myStr + widget.val;
            print(widget.myStr);
          }
        });
      },
      elevation: 2.0,
      fillColor: color2,
      padding: EdgeInsets.all(17.5),
      shape: CircleBorder(),
    );
  }
}
