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
  var _output = '0';
  String _out = '0';
  double _num1 = 0.0;
  double _num2 = 0.0;
  String _operand = "";
  List<String> _num;

  buttonPressed(String btnVal) {
    if (btnVal == 'C') {
      _out = '0';
      _num1 = 0.0;
      _num2 = 0.0;
      _operand = "";
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == '×' ||
        btnVal == '÷') {
      _num1 = double.parse(_output);
      _operand = btnVal;
      _out = "0";
      _output = _output + btnVal;
    } else if (btnVal == '.') {
      if(_out.contains('.')) {
        return;
      } else {
        _out = _out + btnVal;
      }
    } else if (btnVal == '=') {
      _num2 = double.parse(_output);
      if(_operand == '+') {
        _out = (_num1 + _num2).toString();
      } else if(_operand == '-') {
        _out = (_num1 - _num2).toString();
      } else if(_operand == '×') {
        _out = (_num1 * _num2).toString();
      } else if(_operand == '÷') {
        _out = (_num1 / _num2).toString();
      }
      _num1 = 0.0;
      _num2 = 0.0;
    } else {
      _out = _out + btnVal;
    }

    setState(() {
      _output = double.parse(_out).toStringAsPrecision(16);
    });
  }

  void _onButtonPressed(String btnStr) {
    setState(() {
      if (['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'].contains(btnStr))
        _output = (_output == '0') ? btnStr : _output + btnStr;
    });
  }

  void _onButtonPressed1(String btnStr) {
    setState(() {
      if (['÷', '×', '−', '+'].contains(btnStr))
        _output = (_output.contains(btnStr)) ? _output : _output + btnStr;
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
                    child: Expanded(
                      child: FittedBox(
                        child: Text(
                          _output,
                          style: TextStyle(
                              // Styling the text
                              fontSize: 60.0 * curScaleFactor,
                              color: color3),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height < 350
                  ? (mediaQuery.size.height - mediaQuery.padding.top) * 0.004
                  : (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: RawMaterialButton(
                      child: FittedBox(
                        child: Text(
                          'C',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mediaQuery.size.shortestSide < 350
                                  ? 28 * mediaQuery.textScaleFactor
                                  : 32 * mediaQuery.textScaleFactor),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _output = "0";
                        });
                      },
                      elevation: 2.0,
                      fillColor: color3,
                      padding:
                          EdgeInsets.all(mediaQuery.size.shortestSide / 20),
                      shape: CircleBorder(),
                    ),
                  ),
                  ButtonType1(
                      "÷", mediaQuery, _onButtonPressed1, color3, Colors.white),
                  ButtonType1(
                      "×", mediaQuery, _onButtonPressed1, color3, Colors.white),
                  Flexible(
                    flex: 1,
                    child: RawMaterialButton(
                      child: FittedBox(
                        child: Icon(
                          Icons.backspace,
                          color: Colors.white,
                          size: mediaQuery.size.shortestSide < 350
                              ? 28 * mediaQuery.textScaleFactor
                              : 36 * mediaQuery.textScaleFactor,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _output = _output.substring(0, _output.length - 1);
                        });
                      },
                      elevation: 2.0,
                      fillColor: color3,
                      padding:
                          EdgeInsets.all(mediaQuery.size.shortestSide / 20),
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height < 350
                  ? (mediaQuery.size.height - mediaQuery.padding.top) * 0.004
                  : (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  ButtonType1(
                      "7", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "8", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "9", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "+", mediaQuery, _onButtonPressed1, color3, Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height < 350
                  ? (mediaQuery.size.height - mediaQuery.padding.top) * 0.004
                  : (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  ButtonType1(
                      "4", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "5", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "6", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "−", mediaQuery, _onButtonPressed1, color3, Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height < 350
                  ? (mediaQuery.size.height - mediaQuery.padding.top) * 0.004
                  : (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  ButtonType1(
                      "1", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "2", mediaQuery, _onButtonPressed, color4, color3),
                  ButtonType1(
                      "3", mediaQuery, _onButtonPressed, color4, color3),
                  Flexible(
                    flex: 1,
                    child: RawMaterialButton(
                      child: FittedBox(
                        child: Text(
                          '±',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mediaQuery.size.shortestSide < 350
                                  ? 28 * mediaQuery.textScaleFactor
                                  : 32 * mediaQuery.textScaleFactor),
                        ),
                      ),
                      onPressed: () {
                        var val = -1 * (double.parse(_output));
                        setState(() {
                          _output = val.toString();
                        });
                      },
                      elevation: 2.0,
                      fillColor: color3,
                      padding:
                          EdgeInsets.all(mediaQuery.size.shortestSide / 20),
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height < 350
                  ? (mediaQuery.size.height - mediaQuery.padding.top) * 0.004
                  : (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(
                right: mediaQuery.size.width * 0.01,
                left: mediaQuery.size.width * 0.01,
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: RawMaterialButton(
                      child: FittedBox(
                        child: Text(
                          '%',
                          style: TextStyle(
                              color: color3,
                              fontSize: mediaQuery.size.shortestSide < 350
                                  ? 28 * mediaQuery.textScaleFactor
                                  : 32 * mediaQuery.textScaleFactor),
                        ),
                      ),
                      onPressed: () {
                        if (_output.contains('÷')) {
                          _num = _output.split('÷');
                          _output =
                              (double.parse(_num[0]) / double.parse(_num[1]))
                                  .toString();
                        } else if (_output.contains('×')) {
                          _num = _output.split('×');
                          _output =
                              (double.parse(_num[0]) * double.parse(_num[1]))
                                  .toString();
                        } else if (_output.contains('−')) {
                          _num = _output.split('−');
                          _output =
                              (double.parse(_num[0]) - double.parse(_num[1]))
                                  .toString();
                        } else if (_output.contains('+')) {
                          _num = _output.split('+');
                          _output =
                              (double.parse(_num[0]) + double.parse(_num[1]))
                                  .toString();
                        }
                        var val = (double.parse(_output)) / 100;
                        setState(() {
                          _output = val.toString();
                        });
                      },
                      elevation: 2.0,
                      fillColor: color4,
                      padding:
                          EdgeInsets.all(mediaQuery.size.shortestSide / 20),
                      shape: CircleBorder(),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: RawMaterialButton(
                      child: FittedBox(
                        child: Text(
                          '0',
                          style: TextStyle(
                              color: color3, fontSize: 34 * curScaleFactor),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (_output != "0") {
                            _output = _output + "0";
                          }
                        });
                      },
                      elevation: 2.0,
                      fillColor: color4,
                      padding:
                          EdgeInsets.all(mediaQuery.size.shortestSide / 20),
                      shape: CircleBorder(),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: RawMaterialButton(
                      child: FittedBox(
                        child: Text(
                          '.',
                          style: TextStyle(
                              color: color3, fontSize: 34 * curScaleFactor),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if ('.'.allMatches(_output).length == 0 ||
                              '.'
                                      .allMatches(_output, _output.indexOf('÷'))
                                      .length ==
                                  0 ||
                              '.'
                                      .allMatches(_output, _output.indexOf('×'))
                                      .length ==
                                  0 ||
                              '.'
                                      .allMatches(_output, _output.indexOf('+'))
                                      .length ==
                                  0 ||
                              '.'
                                      .allMatches(_output, _output.indexOf('−'))
                                      .length ==
                                  0) {
                            _output = _output + '.';
                          }
                        });
                      },
                      elevation: 2.0,
                      fillColor: color4,
                      padding:
                          EdgeInsets.all(mediaQuery.size.shortestSide / 20),
                      shape: CircleBorder(),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: RawMaterialButton(
                      child: FittedBox(
                        child: Text(
                          '=',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mediaQuery.size.shortestSide < 350
                                  ? 28 * mediaQuery.textScaleFactor
                                  : 32 * mediaQuery.textScaleFactor),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (_output.contains('÷')) {
                            _num = _output.split('÷');
                            _output =
                                (double.parse(_num[0]) / double.parse(_num[1]))
                                    .toString();
                          } else if (_output.contains('×')) {
                            _num = _output.split('×');
                            _output =
                                (double.parse(_num[0]) * double.parse(_num[1]))
                                    .toString();
                          } else if (_output.contains('−')) {
                            _num = _output.split('−');
                            _output =
                                (double.parse(_num[0]) - double.parse(_num[1]))
                                    .toString();
                          } else if (_output.contains('+')) {
                            _num = _output.split('+');
                            _output =
                                (double.parse(_num[0]) + double.parse(_num[1]))
                                    .toString();
                          } else {
                            _output = _output;
                          }
                        });
                      },
                      elevation: 2.0,
                      fillColor: color3,
                      padding:
                          EdgeInsets.all(mediaQuery.size.shortestSide / 20),
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
