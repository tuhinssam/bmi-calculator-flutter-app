import 'dart:ffi';

import 'package:bmi_calculator/componenets/BottomButton.dart';
import 'package:bmi_calculator/componenets/reusable_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({this.bmiResult, this.resultText, this.interpretation});

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
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kNumberTextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kResultInfoStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
