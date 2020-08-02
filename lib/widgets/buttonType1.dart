import 'package:flutter/material.dart';
import '../constant_terms.dart';

class ButtonType1 extends StatefulWidget {
  final String val;
  final MediaQueryData mediaQuery;
  final Function callBack;
  final Color colorBg;
  final Color colorText;

  ButtonType1(this.val, this.mediaQuery, this.callBack, this.colorBg,this.colorText);

  @override
  _ButtonType1State createState() => _ButtonType1State();
}

class _ButtonType1State extends State<ButtonType1> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: RawMaterialButton(
        child: FittedBox(
          child: Text(
            widget.val,
            style: TextStyle(
                color: widget.colorText,
                fontSize: widget.mediaQuery.size.shortestSide < 350
                    ? 28 * widget.mediaQuery.textScaleFactor
                    : 32 * widget.mediaQuery.textScaleFactor),
          ),
        ),
        onPressed: () => widget.callBack(widget.val),
        elevation: 2.0,
        fillColor: widget.colorBg,
        padding: EdgeInsets.all(widget.mediaQuery.size.shortestSide / 20),
        shape: CircleBorder(),
      ),
    );
  }
}
