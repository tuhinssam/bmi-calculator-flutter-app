import 'dart:ffi';

import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'BMI CALCULATOR',
          style: kAppBarTxtStyle,
        )),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kResultLabelStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              colour: kActiveCardColor,
              cardChild: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '24.5',
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'Information',
                      style: kResultInfoStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return ResultsPage();
              }));
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kCalculateBtnTxtStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kButtonContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
