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
            Container(
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text('AC',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('+/-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('÷',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.orange,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text('7',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('8',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('9',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('×',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.orange,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text('4',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('5',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('6',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.orange,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    child: Text('1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('+',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.orange,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 175,
                    child: RawMaterialButton(
                      child: Text('0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26),),
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.grey,
                      padding: EdgeInsets.all(17.5),
                      shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(36.0)
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    child: Text('.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.grey,
                    padding: EdgeInsets.all(17.5),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    child: Text('=',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26),),
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.orange,
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
