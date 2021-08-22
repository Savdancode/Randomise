import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Ask Anything'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: Center(
        child: MaterialButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
              print(ballNumber);
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      )),
    );
  }
}
