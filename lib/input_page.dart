import 'package:bmi/bmiBrain.dart';
import 'package:bmi/results.dart';
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
  int weight = 40;
  int age = 6;
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
              nativeColor: kactiveReusableCardnativeColor,
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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: kbottomContainerColor,
                      activeTrackColor: Colors.white,
                      inactiveTickMarkColor: Colors.white38,
                      overlayColor: Color(0x29eB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 55,
                      max: 260,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
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
              children: [
                Expanded(
                  child: BmiCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: klabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight--;
                                  },
                                );
                              },
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    nativeColor: kactiveReusableCardnativeColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: klabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    age--;
                                  },
                                );
                              },
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    age++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    nativeColor: kactiveReusableCardnativeColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Brain works = Brain(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        bmiResult: works.bmiBrain(),
                        resultText: works.results(),
                        interpretation: works.interpret(),
                      ),
                    ),
                  );
                },
                child: Text(
                  "CALCULATE",
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

class RoundButton extends StatelessWidget {
  RoundButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 2,
      shape: CircleBorder(),
      fillColor: Color(0x500062ff),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
