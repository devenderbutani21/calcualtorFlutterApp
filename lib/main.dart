import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant_terms.dart';
import 'widgets/buttonType1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyCalcPage(),
    );
  }
}

class MyCalcPage extends StatefulWidget {
  @override
  _MyCalcPageState createState() => _MyCalcPageState();
}

class _MyCalcPageState extends State<MyCalcPage> {
  var _ansStr = '0';
  List<String> _num;

  void _onButtonPressed(String btnStr) {
    setState(() {
      if (['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'].contains(btnStr))
        _ansStr = (_ansStr == '0') ? btnStr : _ansStr + btnStr;
    });
  }

  void _onButtonPressed1(String btnStr) {
    setState(() {
      if (['÷', '×', '−', '+'].contains(btnStr))
        _ansStr = (_ansStr.contains(btnStr)) ? _ansStr : _ansStr + btnStr;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final curScaleFactor = mediaQuery.textScaleFactor;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      right: mediaQuery.size.width * 0.01,
                      left: mediaQuery.size.width * 0.01,
                    ),
                    // Display Container
                    constraints: BoxConstraints.expand(
                      // Creating a boxed container
                      height:
                      (mediaQuery.size.height - mediaQuery.padding.top) *
                          0.25,
                    ),
                    alignment: Alignment.bottomRight,
                    // Aligning the text to the bottom right of our display screen
                    color: Colors.black,
                    // Setting the background color of the container
                    child: Text(
                      _ansStr,
                      style: TextStyle(
                        // Styling the text
                          fontSize: 60.0 * curScaleFactor,
                          color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: mediaQuery.size.shortestSide*0.0265,),
                  RawMaterialButton(
                    child: Text(
                      'AC',
                      style: TextStyle(
                          color: Colors.black, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        _ansStr = "0";
                      });
                    },
                    elevation: 2.0,
                    fillColor: color1,
                    padding: EdgeInsets.all(mediaQuery.size.shortestSide/20),
                    shape: CircleBorder(),
                  ),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  RawMaterialButton(
                    child: Text(
                      '+/−',
                      style: TextStyle(
                          color: Colors.black, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      var val = -1 * (int.parse(_ansStr));
                      setState(() {
                        _ansStr = val.toString();
                      });
                    },
                    elevation: 2.0,
                    fillColor: color1,
                    padding: EdgeInsets.all(mediaQuery.size.shortestSide/20),
                    shape: CircleBorder(),
                  ),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  RawMaterialButton(
                    child: Text(
                      '%',
                      style: TextStyle(
                          color: Colors.black, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      if (_ansStr.contains('÷')) {
                        _num = _ansStr.split('÷');
                        _ansStr =
                            (double.parse(_num[0]) / double.parse(_num[1]))
                                .toString();
                      } else if (_ansStr.contains('×')) {
                        _num = _ansStr.split('×');
                        _ansStr =
                            (double.parse(_num[0]) * double.parse(_num[1]))
                                .toString();
                      } else if (_ansStr.contains('−')) {
                        _num = _ansStr.split('−');
                        _ansStr =
                            (double.parse(_num[0]) - double.parse(_num[1]))
                                .toString();
                      } else if (_ansStr.contains('+')) {
                        _num = _ansStr.split('+');
                        _ansStr =
                            (double.parse(_num[0]) + double.parse(_num[1]))
                                .toString();
                      }
                      var val = (double.parse(_ansStr)) / 100;
                      setState(() {
                        _ansStr = val.toString();
                      });
                    },
                    elevation: 2.0,
                    fillColor: color1,
                    padding: EdgeInsets.all(mediaQuery.size.shortestSide/20),
                    shape: CircleBorder(),
                  ),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("÷", mediaQuery, _onButtonPressed1, color3),
                  SizedBox(width: mediaQuery.size.shortestSide*0.026,),
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: mediaQuery.size.shortestSide*0.0265,),
                  ButtonType1("7", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("8", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("9", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("×", mediaQuery, _onButtonPressed1, color3),
                  SizedBox(width: mediaQuery.size.shortestSide*0.026,),
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: mediaQuery.size.shortestSide*0.0265,),
                  ButtonType1("4", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("5", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("6", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("−", mediaQuery, _onButtonPressed1, color3),
                  SizedBox(width: mediaQuery.size.shortestSide*0.026,),
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: mediaQuery.size.shortestSide*0.0265,),
                  ButtonType1("1", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("2", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("3", mediaQuery, _onButtonPressed, color2),
                  SizedBox(width: mediaQuery.size.shortestSide*0.02,),
                  ButtonType1("+", mediaQuery, _onButtonPressed1, color3),
                  SizedBox(width: mediaQuery.size.shortestSide*0.026,),
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: mediaQuery.size.shortestSide*0.0265,),
                  Container(
                    width: mediaQuery.size.width * 0.425,
                    child: RawMaterialButton(
                      child: Text(
                        '0',
                        style: TextStyle(
                            color: Colors.white, fontSize: 28 * curScaleFactor),
                      ),
                      onPressed: () {
                        setState(() {
                          if (_ansStr != "0") {
                            _ansStr = _ansStr + "0";
                          }
                        });
                      },
                      elevation: 2.0,
                      fillColor: color2,
                      padding: EdgeInsets.all(mediaQuery.size.shortestSide/20),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(36.0 * curScaleFactor)),
                    ),
                  ),
                  SizedBox(width: mediaQuery.size.shortestSide*0.038,),
                  RawMaterialButton(
                    child: Text(
                      '.',
                      style: TextStyle(
                          color: Colors.white, fontSize: 34 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if ('.'.allMatches(_ansStr).length == 0 ||
                            '.'
                                .allMatches(_ansStr, _ansStr.indexOf('÷'))
                                .length ==
                                0) {
                          _ansStr = _ansStr + '.';
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(mediaQuery.size.shortestSide/20),
                    shape: CircleBorder(),
                  ),
                  SizedBox(width: mediaQuery.size.shortestSide*0.026,),
                  RawMaterialButton(
                    child: Text(
                      '=',
                      style: TextStyle(
                          color: Colors.white, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr.contains('÷')) {
                          _num = _ansStr.split('÷');
                          _ansStr =
                              (double.parse(_num[0]) / double.parse(_num[1]))
                                  .toString();
                        } else if (_ansStr.contains('×')) {
                          _num = _ansStr.split('×');
                          _ansStr =
                              (double.parse(_num[0]) * double.parse(_num[1]))
                                  .toString();
                        } else if (_ansStr.contains('−')) {
                          _num = _ansStr.split('−');
                          _ansStr =
                              (double.parse(_num[0]) - double.parse(_num[1]))
                                  .toString();
                        } else if (_ansStr.contains('+')) {
                          _num = _ansStr.split('+');
                          _ansStr =
                              (double.parse(_num[0]) + double.parse(_num[1]))
                                  .toString();
                        } else {
                          _ansStr = _ansStr;
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color3,
                    padding: EdgeInsets.all(mediaQuery.size.shortestSide/20),
                    shape: CircleBorder(),
                  ),
                  SizedBox(width: mediaQuery.size.shortestSide*0.026,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
