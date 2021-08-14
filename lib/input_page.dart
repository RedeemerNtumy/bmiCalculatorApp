import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmiCard.dart';
import 'Gender.dart';

const bottomContainerHeight = 80.0;
const inactiveReusableCardNativeColor = Color(0xff1565C0);
const activeReusableCardnativeColor = Colors.blue;
const bottomContainerColor = Color(0xffEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveReusableCardNativeColor;
  Color femaleCardColor = inactiveReusableCardNativeColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveReusableCardNativeColor) {
        maleCardColor = activeReusableCardnativeColor;
        femaleCardColor = inactiveReusableCardNativeColor;
      } else {
        maleCardColor = inactiveReusableCardNativeColor;
      }
    } else {
      if (femaleCardColor == inactiveReusableCardNativeColor) {
        femaleCardColor = activeReusableCardnativeColor;
        maleCardColor = inactiveReusableCardNativeColor;
      } else {
        femaleCardColor = inactiveReusableCardNativeColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: BmiCard(
                      cardChild: Gender(
                        gender: FontAwesomeIcons.mars,
                        genderText: "MALE",
                      ),
                      nativeColor: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: BmiCard(
                      cardChild: Gender(
                          gender: FontAwesomeIcons.venus, genderText: "FEMALE"),
                      nativeColor: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiCard(
              nativeColor: inactiveReusableCardNativeColor,
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
