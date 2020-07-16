import 'package:calculatorflutterapp/provider/button_values.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  ButtonBloc buttonBloc;

  @override
  Widget build(BuildContext context) {
    buttonBloc = Provider.of<ButtonBloc>(context);
    return RawMaterialButton(
      child: Text(
        widget.val,
        style: TextStyle(
            color: Colors.white,
            fontSize: 32 * widget.curScaleFactor.textScaleFactor),
      ),
      onPressed: () {
        setState(() {
          if (buttonBloc.ansVal == "0") {
            buttonBloc.ansVal = widget.val;
          } else {
            buttonBloc.ansVal = buttonBloc.ansVal + widget.val;
            print(buttonBloc.ansVal);
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
