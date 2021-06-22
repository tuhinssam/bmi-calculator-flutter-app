import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final content;
  final iconWidget;
  IconContent({@required this.content, @required this.iconWidget});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconWidget,
        SizedBox(
          height: 15,
        ),
        Text(content, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
      ],
    );
  }
}
