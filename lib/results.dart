import 'package:bmi/const.dart';
import 'package:flutter/material.dart';
import 'bmiCard.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("MYBMI"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              "Your Result",
              style: kbaseButton.copyWith(
                fontSize: 50,
              ),
            ),
          ),
          Expanded(
            child: BmiCard(nativeColor: kactiveReusableCardnativeColor),
            flex: 5,
          ),
          Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "RE-CALCULATE BMI",
                  style: kbaseButton,
                ),
              ),
            ),
            color: kbottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kbottomContainerHeight,
          )
        ],
      ),
    );
  }
}
