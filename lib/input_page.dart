import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmiCard.dart';
import 'Gender.dart';

const bottomContainerHeight = 80.0;
const inactiveReusableCardNativeColor = Color(0xff1565C0);
const activeReusableCardnativeColor = Colors.blue;
const bottomContainerColor = Color(0xffEB1555);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("MYBMI"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    gesture: () {
                      setState(() {
                        selectedGender=GenderType.male;
                      });
                    },
                    cardChild: Gender(
                      gender: FontAwesomeIcons.mars,
                      genderText: "MALE",
                    ),
                    nativeColor: selectedGender == GenderType.male
                        ? activeReusableCardnativeColor
                        : inactiveReusableCardNativeColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    gesture: () {
                      setState(() {
                        selectedGender=GenderType.female;
                      });
                    },
                    cardChild: Gender(
                        gender: FontAwesomeIcons.venus, genderText: "FEMALE"),
                    nativeColor: selectedGender == GenderType.female
                        ? activeReusableCardnativeColor
                        : inactiveReusableCardNativeColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiCard(
              nativeColor: inactiveReusableCardNativeColor,
              cardChild:Column(
                children: [
                  Text("HEIGHT")
                ],
              )
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    nativeColor: inactiveReusableCardNativeColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    nativeColor: inactiveReusableCardNativeColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
