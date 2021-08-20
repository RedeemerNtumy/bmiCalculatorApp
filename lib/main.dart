import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: InputPage(),
      routes: {
        "/result": (context)=>Result(),
      },
    );
  }
}
