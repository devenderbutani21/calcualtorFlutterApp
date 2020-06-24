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

class MyCalcPage extends StatefulWidget{
  @override
  _MyCalcPageState createState() => _MyCalcPageState();
}

class _MyCalcPageState extends State<MyCalcPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
              SizedBox(height: 40,),
              Container(
                height: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                  ),
                ),
              ),
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Text('%'),
                    onPressed: () { },
                  ),
                  FlatButton(
                    child: Text('('),
                    onPressed: () { },
                  ),
                  FlatButton(
                    child: Text(')'),
                    onPressed: () { },
                  ),
                  FlatButton(
                    child: Text('/'),
                    onPressed: () { },
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('7'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('8'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('9'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('X'),
                  onPressed: () { },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('4'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('5'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('6'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('-'),
                  onPressed: () { },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('1'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('2'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('3'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('+'),
                  onPressed: () { },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('+/-'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('0'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('.'),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('='),
                  onPressed: () { },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
