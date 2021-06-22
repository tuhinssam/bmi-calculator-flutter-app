import 'dart:ffi';

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(colour: Color(0XFF0A0E33)),
                ),
                Expanded(
                  child: ReusableWidget(colour: Color(0XFF0A0E33)),
                )
              ],
            )),
            Expanded(
              child: ReusableWidget(colour: Color(0XFF0A0E33)),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(colour: Color(0XFF0A0E33)),
                ),
                Expanded(
                  child: ReusableWidget(colour: Color(0XFF0A0E33)),
                )
              ],
            ))
          ],
        ));
  }
}

class ReusableWidget extends StatelessWidget {
  final Color colour;
  ReusableWidget({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
    );
  }
}
