import 'package:flutter/material.dart';
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
        Text(
          genderText,
          style: TextStyle(
              color: Colors.white60, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
