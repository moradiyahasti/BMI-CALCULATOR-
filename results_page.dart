import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {

ResultPage({required this.bmiResult,required this.resultText,required this.interPretation});

  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                  'Your Result',
                  style: kTitleTextStyle
          ),
            ),
          ),
          Expanded(
              flex:5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                  style: kResultTextstyle,
                  ),
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(interPretation,style:kBodyTextStyle,
                  textAlign: TextAlign.center,),
                ],
              ),
              ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle:'RE-CALCUOLATE' ),
        ],
      )
    );
  }
}
