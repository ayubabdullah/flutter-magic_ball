import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: MagicBallPage(),
      ),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('assets/images/ball$ballNumber.png'),
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print(ballNumber);
          });
        },
      ),
    );
  }
}
