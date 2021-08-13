import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Expanded interface() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 2,
              offset: Offset(0, 0),
            )
          ],
        ),
      ),
    );
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
                interface(),
                interface(),
              ],
            ),
          ),
          interface(),
          interface(),
          interface(),
        ],
      ),
    );
  }
}
