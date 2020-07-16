import 'package:calculatorflutterapp/provider/button_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'constant_terms.dart';

import 'widgets/buttonType1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ButtonBloc>.value(value: ButtonBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyCalcPage(),
      ),
    );
  }
}

class MyCalcPage extends StatefulWidget {
  @override
  _MyCalcPageState createState() => _MyCalcPageState();
}

class _MyCalcPageState extends State<MyCalcPage> {
  // var buttonBloc.ansVal = '0';
  List<String> _num;
  ButtonBloc buttonBloc;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final curScaleFactor = mediaQuery.textScaleFactor;
    buttonBloc = Provider.of<ButtonBloc>(context);
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
                // Equal vertical space between all the children of column
                children: <Widget>[
                  // the column widget uses the children property
                  Container(
                    margin: EdgeInsets.only(
                      right: mediaQuery.size.width * 0.1,
                      left: mediaQuery.size.width * 0.1,
                    ),
                    // Display Container
                    constraints: BoxConstraints.expand(
                      // Creating a boxed container
                      height:
                          (mediaQuery.size.height - mediaQuery.padding.top) *
                              0.3,
                    ),
                    alignment: Alignment.bottomRight,
                    // Aligning the text to the bottom right of our display screen
                    color: Colors.black,
                    // Setting the background color of the container
                    child: Text(
                      buttonBloc.ansVal,
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
                left: (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
                right:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
              ),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text(
                      'AC',
                      style: TextStyle(
                          color: Colors.black, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        buttonBloc.ansVal = "0";
                      });
                    },
                    elevation: 2.0,
                    fillColor: color1,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '+/−',
                      style: TextStyle(
                          color: Colors.black, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      var val = -1 * (int.parse(buttonBloc.ansVal));
                      setState(() {
                        buttonBloc.ansVal = val.toString();
                      });
                    },
                    elevation: 2.0,
                    fillColor: color1,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '%',
                      style: TextStyle(
                          color: Colors.black, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      var val = (double.parse(buttonBloc.ansVal)) / 100;
                      setState(() {
                        buttonBloc.ansVal = val.toString();
                      });
                    },
                    elevation: 2.0,
                    fillColor: color1,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '÷',
                      style: TextStyle(
                          color: Colors.white, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal.contains('÷') ||
                            buttonBloc.ansVal.contains('×') ||
                            buttonBloc.ansVal.contains('−') ||
                            buttonBloc.ansVal.contains('+')) {
                        } else if (buttonBloc.ansVal == '0') {
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "÷";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color3,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                left: (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
                right:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
              ),
              child: Row(
                children: <Widget>[
//                  RawMaterialButton(
//                    child: Text(
//                      '7',
//                      style: TextStyle(color: Colors.white, fontSize: 28 * curScaleFactor),
//                    ),
//                    onPressed: () {
//                      setState(() {
//                        if (buttonBloc.ansVal == "0") {
//                          buttonBloc.ansVal = "7";
//                        } else {
//                          buttonBloc.ansVal = buttonBloc.ansVal + "7";
//                        }
//                      });
//                    },
//                    elevation: 2.0,
//                    fillColor: color2,
//                    padding: EdgeInsets.all(17.5),
//                    shape: CircleBorder(),
//                  ),
                  ButtonType1(buttonBloc.ansVal, "7", mediaQuery),
                  RawMaterialButton(
                    child: Text(
                      '8',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "8";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "8";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '9',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "9";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "9";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '×',
                      style: TextStyle(
                          color: Colors.white, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal.contains('÷') ||
                            buttonBloc.ansVal.contains('×') ||
                            buttonBloc.ansVal.contains('−') ||
                            buttonBloc.ansVal.contains('+')) {
                        } else if (buttonBloc.ansVal == '0') {
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "×";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color3,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                left: (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
                right:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
              ),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "4";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "4";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '5',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "5";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "5";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '6',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "6";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "6";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '−',
                      style: TextStyle(
                          color: Colors.white, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal.contains('÷') ||
                            buttonBloc.ansVal.contains('×') ||
                            buttonBloc.ansVal.contains('−') ||
                            buttonBloc.ansVal.contains('+')) {
                        } else if (buttonBloc.ansVal == '0') {
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "−";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color3,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                left: (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
                right:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.045,
              ),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "1";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "1";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "2";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "2";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal == "0") {
                          buttonBloc.ansVal = "3";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "3";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '+',
                      style: TextStyle(
                          color: Colors.white, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal.contains('÷') ||
                            buttonBloc.ansVal.contains('×') ||
                            buttonBloc.ansVal.contains('−') ||
                            buttonBloc.ansVal.contains('+')) {
                        } else if (buttonBloc.ansVal == '0') {
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + "+";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color3,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                left:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.0455,
                right:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.0455,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 175,
                    child: RawMaterialButton(
                      child: Text(
                        '0',
                        style: TextStyle(
                            color: Colors.white, fontSize: 28 * curScaleFactor),
                      ),
                      onPressed: () {
                        setState(() {
                          if (buttonBloc.ansVal != "0") {
                            buttonBloc.ansVal = buttonBloc.ansVal + "0";
                          }
                        });
                      },
                      elevation: 2.0,
                      fillColor: color2,
                      padding: EdgeInsets.all(17.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0)),
                    ),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '.',
                      style: TextStyle(
                          color: Colors.white, fontSize: 28 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal.contains('÷') ||
                            buttonBloc.ansVal.contains('×') ||
                            buttonBloc.ansVal.contains('−') ||
                            buttonBloc.ansVal.contains('+')) {
                          buttonBloc.ansVal = buttonBloc.ansVal + ".";
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal + ".";
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color2,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '=',
                      style: TextStyle(
                          color: Colors.white, fontSize: 32 * curScaleFactor),
                    ),
                    onPressed: () {
                      setState(() {
                        if (buttonBloc.ansVal.contains('÷')) {
                          _num = buttonBloc.ansVal.split('÷');
                          buttonBloc.ansVal =
                              (double.parse(_num[0]) / double.parse(_num[1]))
                                  .toString();
                        } else if (buttonBloc.ansVal.contains('×')) {
                          _num = buttonBloc.ansVal.split('×');
                          buttonBloc.ansVal =
                              (double.parse(_num[0]) * double.parse(_num[1]))
                                  .toString();
                        } else if (buttonBloc.ansVal.contains('−')) {
                          _num = buttonBloc.ansVal.split('−');
                          buttonBloc.ansVal =
                              (double.parse(_num[0]) - double.parse(_num[1]))
                                  .toString();
                        } else if (buttonBloc.ansVal.contains('+')) {
                          _num = buttonBloc.ansVal.split('+');
                          buttonBloc.ansVal =
                              (double.parse(_num[0]) + double.parse(_num[1]))
                                  .toString();
                        } else {
                          buttonBloc.ansVal = buttonBloc.ansVal;
                        }
                      });
                    },
                    elevation: 2.0,
                    fillColor: color3,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
