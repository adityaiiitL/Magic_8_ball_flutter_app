import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageNumber = 1;
  void changeImg() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: FlatButton(
          onPressed: () {
            changeImg();
          },
          child: Image.asset('images/ball$imageNumber.png'),
        ),
      ),
    );
  }
}
