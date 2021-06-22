import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  RoundIconButton({this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 45, height: 45),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: () {},
    );
  }
}
