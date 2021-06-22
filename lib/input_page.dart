import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const buttonContainerHeight = 80.0;
const activeCardColor = Color(0XFF0A0E33);
const bottomContainerColor = Color(0XFFEB1555);

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
                  child: ReusableWidget(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      content: "MALE",
                      iconWidget: Icon(
                        Icons.male,
                        size: 80.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      content: "FEMALE",
                      iconWidget: Icon(
                        Icons.female,
                        size: 80.0,
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableWidget(colour: activeCardColor),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableWidget(colour: activeCardColor),
                )
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: buttonContainerHeight,
            )
          ],
        ));
  }
}
