import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const reusableCardNativeColor = Colors.blue;
const bottomContainerColor = Color(0xffEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    cardChild: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(color: Colors.white,
                          fontSize: 20),
                        )
                      ],
                    ),
                    nativeColor: reusableCardNativeColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    nativeColor: reusableCardNativeColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiCard(
              nativeColor: reusableCardNativeColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    nativeColor: reusableCardNativeColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    nativeColor: reusableCardNativeColor,
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

class BmiCard extends StatelessWidget {
  BmiCard({required this.nativeColor, this.cardChild});
  final Color nativeColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: nativeColor,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 2,
            offset: Offset(0, 0),
          )
        ],
      ),
    );
  }
}
