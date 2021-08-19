import 'package:flutter/material.dart';
import 'const.dart';

class Gender extends StatelessWidget {
  Gender({required this.gender, required this.genderText});
  final IconData gender;
  final String genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(genderText, style: labelTextStyle)
      ],
    );
  }
}
