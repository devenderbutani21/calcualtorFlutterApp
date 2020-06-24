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
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
              SizedBox(height: 40,),
              Container(
                height: 300,
              ),
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    child: Text('%', style: TextStyle(color: Colors.white, fontSize: 26),),
                    onPressed: () { },
                  ),
                  FlatButton(
                    child: Text('(', style: TextStyle(color: Colors.white, fontSize: 26),),
                    onPressed: () { },
                  ),
                  FlatButton(
                    child: Text(')', style: TextStyle(color: Colors.white, fontSize: 26),),
                    onPressed: () { },
                  ),
                  FlatButton(
                    child: Text('/', style: TextStyle(color: Colors.white, fontSize: 26),),
                    onPressed: () { },
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('7', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('8', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('9', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('X', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('4', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('5', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('6', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('-', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('1', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('2', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('3', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('+', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('+/-', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('0', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('.', style: TextStyle(color: Colors.white, fontSize: 26),),
                  onPressed: () { },
                ),
                FlatButton(
                  child: Text('=', style: TextStyle(color: Colors.white, fontSize: 26),),
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
