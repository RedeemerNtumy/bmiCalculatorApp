import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmiCard.dart';
import 'Gender.dart';
import 'const.dart';

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;
  int height = 190;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("MYBMI"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    gesture: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    cardChild: Gender(
                      gender: FontAwesomeIcons.mars,
                      genderText: "MALE",
                    ),
                    nativeColor: selectedGender == GenderType.male
                        ? kactiveReusableCardnativeColor
                        : kinactiveReusableCardNativeColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    gesture: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    cardChild: Gender(
                        gender: FontAwesomeIcons.venus, genderText: "FEMALE"),
                    nativeColor: selectedGender == GenderType.female
                        ? kactiveReusableCardnativeColor
                        : kinactiveReusableCardNativeColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiCard(
              nativeColor: kinactiveReusableCardNativeColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: klabelTextStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumbers,
                      ),
                      Text(
                        "CM",
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 55,
                    max: 260,
                    onChanged: (double newValue) {
                      print(newValue);
                    },
                    activeColor: Colors.white,
                    inactiveColor: Colors.white60,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    nativeColor: kinactiveReusableCardNativeColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    nativeColor: kinactiveReusableCardNativeColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
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
