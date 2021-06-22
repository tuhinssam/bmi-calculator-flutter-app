import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  ReusableWidget({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
      ),
    );
  }
}
