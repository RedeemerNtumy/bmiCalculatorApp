import 'package:bmi/const.dart';
import 'package:flutter/material.dart';
import 'bmiCard.dart';
import 'bmiBrain.dart';



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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kbaseButton.copyWith(
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Expanded(
            child: BmiCard(
              nativeColor: kinactiveReusableCardNativeColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: kresultTextStyle,
                  ),
                  Text(
                    "56",
                    style: kbmitext,
                  ),
                  Text(
                    "Your BMI is low the nhsdsh hsbshbs hsdhshsh hsshhs hsshbshbsh hshsh",
                    textAlign: TextAlign.center,
                    style: kbmiDescription,
                  )
                ],
              ),
            ),
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
