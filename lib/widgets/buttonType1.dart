import 'package:flutter/material.dart';

class ButtonType1 extends StatefulWidget {
  final String val;
  final MediaQueryData mediaQuery;
  final Function callBack;
  final Color color;
  ButtonType1(this.val, this.mediaQuery, this.callBack,this.color);

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
      fillColor: widget.color,
      padding: EdgeInsets.all(((widget.mediaQuery.size.height - widget.mediaQuery.padding.top) + widget.mediaQuery.size.width)/16 * 0.25),
      shape: CircleBorder(),
    );
  }
}
