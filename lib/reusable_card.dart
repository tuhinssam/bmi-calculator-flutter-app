import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableWidget({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
    );
  }
}
