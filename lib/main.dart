import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text('Ask Me'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Magic(),
        ),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  number = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/ball$number.png'),
            ),
          ),
        ],
      ),
    );
  }
}
