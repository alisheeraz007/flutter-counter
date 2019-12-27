// import 'dart:html';

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<Color> randomColor = [
    Color(0xffff9800),
    Color(0xff9e9e9e),
    Color(0xfff44336),
    Color(0xffe91e63),
    Color(0xff9c27b0),
    Color(0xff673ab7),
    Color(0xff3f51b5),
    Color(0xff2196f3),
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.deepPurple,
    Colors.orange,
    Colors.pink,
    Colors.cyan,
  ];

  int index;
  Color colorrightnow;
  Color buttonColor;

  void _incrementCounter() {
    setState(() {
      index = Random().nextInt(randomColor.length);
      colorrightnow = randomColor[index];
      buttonColor = randomColor[index + 1];
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      index = Random().nextInt(randomColor.length);
      colorrightnow = randomColor[index];
      buttonColor = randomColor[index + 1];
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorrightnow,
      appBar: AppBar(
        title: Text("Flutter Counter"),
        backgroundColor: buttonColor,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Here we made a increment decrement counter using flutter..!!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              '$_counter',
              // style: Theme.of(context).textTheme.display1,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: buttonColor,
                  onPressed: _decrementCounter,
                  tooltip: 'decrement',
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  backgroundColor: buttonColor,
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
