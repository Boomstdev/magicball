import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 5 ball',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Magic Ball'),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: ball(),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}

class ball extends StatefulWidget {
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int stateBall = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {
            print('Press+ $stateBall');
            setState(
              () {
                stateBall = Random().nextInt(5) + 1;
              },
            );
          },
          child: Image.asset('images/ball$stateBall.png'),
        ),
      ],
    );
  }
}
