import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(homePge());

class homePge extends StatefulWidget {
  @override
  _homePgeState createState() => _homePgeState();
}

class _homePgeState extends State<homePge> {
  int randomNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything '),
        ),
        body: Container(
          color: Colors.blue[700],
          child: Center(
            child: InkWell(
                onTap: () {
                  setState(() {
                    randomNumber = 1 + Random().nextInt(5);
                  });
                },
                child: Image.asset('images/ball$randomNumber.png')),
          ),
        ),
      ),
    );
  }
}
