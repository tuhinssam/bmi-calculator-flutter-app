import 'package:bmi_calculator/RoundIconButton.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void updateColor(Gender gender) {
  //   if (gender == Gender.Male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (gender == Gender.Female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    colour: selectedGender == Gender.Male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      content: "MALE",
                      iconWidget: Icon(
                        Icons.male,
                        size: 80.0,
                      ),
                    ),
                    onPress: () {
                      setState(() {
                        print('male button clicked');
                        selectedGender = Gender.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    colour: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      content: "FEMALE",
                      iconWidget: Icon(
                        Icons.female,
                        size: 80.0,
                      ),
                    ),
                    onPress: () {
                      setState(() {
                        print('female button clicked');
                        selectedGender = Gender.Female;
                      });
                    },
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableWidget(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kContentTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kContentTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        thumbColor: Color(0xFFEB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: Color(0x25EB1555),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    colour: kActiveCardColor,
                    cardChild: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT', style: kContentTextStyle),
                          Text(
                            '60',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icon: FontAwesomeIcons.minus),
                              SizedBox(width: 10),
                              RoundIconButton(icon: FontAwesomeIcons.plus),
                            ],
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    colour: kActiveCardColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE', style: kContentTextStyle),
                          Text(
                            '60',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icon: FontAwesomeIcons.minus),
                              SizedBox(width: 10),
                              RoundIconButton(icon: FontAwesomeIcons.plus),
                            ],
                          )
                        ]),
                  ),
                )
              ],
            )),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kButtonContainerHeight,
            )
          ],
        ));
  }
}
