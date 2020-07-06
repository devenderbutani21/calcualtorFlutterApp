import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
  double _num1 = 0;
  double _num2 = 0;

  static const color1 = Color(0xffb5b5b5);
  static const color2 = Color(0xff414141);
  static const color3 = Color(0xfffe9d12);

  @override
  Widget build(BuildContext context) {
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
                    margin: const EdgeInsets.only(
                      right: 40.0,
                      left: 40,
                    ),
                    // Display Container
                    constraints: BoxConstraints.expand(
                      // Creating a boxed container
                      height:
                          Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                              140.0,
                    ),
                    alignment: Alignment.bottomRight,
                    // Aligning the text to the bottom right of our display screen
                    color: Colors.black,
                    // Setting the background color of the container
                    child: Text(
                      _ansStr,
                      style: TextStyle(
                          // Styling the text
                          fontSize: 60.0,
                          color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text(
                      'AC',
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                    onPressed: () {
                      setState(() {
                        _ansStr = "0";
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
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                    onPressed: () {
                      var val = -1 * (int.parse(_ansStr));
                      setState(() {
                        _ansStr = val.toString();
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
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                    onPressed: () {
                      var val = (double.parse(_ansStr)) / 100;
                      setState(() {
                        _ansStr = val.toString();
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
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr.contains('÷') ||
                            _ansStr.contains('×') ||
                            _ansStr.contains('−') ||
                            _ansStr.contains('+')) {
                        } else if (_ansStr == '0') {
                        } else {
                          _ansStr = _ansStr + "÷";
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
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text(
                      '7',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "7";
                        } else {
                          _ansStr = _ansStr + "7";
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
                      '8',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "8";
                        } else {
                          _ansStr = _ansStr + "8";
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
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "9";
                        } else {
                          _ansStr = _ansStr + "9";
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
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr.contains('÷') ||
                            _ansStr.contains('×') ||
                            _ansStr.contains('−') ||
                            _ansStr.contains('+')) {
                        } else if (_ansStr == '0') {
                        } else {
                          _ansStr = _ansStr + "×";
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
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "4";
                        } else {
                          _ansStr = _ansStr + "4";
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
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "5";
                        } else {
                          _ansStr = _ansStr + "5";
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
                        if (_ansStr == "0") {
                          _ansStr = "6";
                        } else {
                          _ansStr = _ansStr + "6";
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
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr.contains('÷') ||
                            _ansStr.contains('×') ||
                            _ansStr.contains('−') ||
                            _ansStr.contains('+')) {
                        } else if (_ansStr == '0') {
                        } else {
                          _ansStr = _ansStr + "−";
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
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "1";
                        } else {
                          _ansStr = _ansStr + "1";
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
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "2";
                        } else {
                          _ansStr = _ansStr + "2";
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
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr == "0") {
                          _ansStr = "3";
                        } else {
                          _ansStr = _ansStr + "3";
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
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr.contains('÷') ||
                            _ansStr.contains('×') ||
                            _ansStr.contains('−') ||
                            _ansStr.contains('+')) {
                        } else if (_ansStr == '0') {
                        } else {
                          _ansStr = _ansStr + "+";
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
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 175,
                    child: RawMaterialButton(
                      child: Text(
                        '0',
                        style: TextStyle(color: Colors.white, fontSize: 28),
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
                      padding: EdgeInsets.all(17.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0)),
                    ),
                  ),
                  RawMaterialButton(
                    child: Text(
                      '.',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_ansStr.contains('.') ||
                            _ansStr.contains('÷') ||
                            _ansStr.contains('×') ||
                            _ansStr.contains('−') ||
                            _ansStr.contains('+')) {
                          _ansStr = _ansStr;
                        } else {
                          _ansStr = _ansStr + ".";
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
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    onPressed: () {},
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
