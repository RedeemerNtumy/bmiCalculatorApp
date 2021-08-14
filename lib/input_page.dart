import 'package:flutter/material.dart';

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
                    nativeColor: Colors.blue,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    nativeColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiCard(
              nativeColor: Colors.blue,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: BmiCard(
                  nativeColor: Colors.blue,
                ),
              ),
              Expanded(
                child: BmiCard(
                  nativeColor: Colors.blue,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}


class BmiCard extends StatelessWidget {
  BmiCard({required this.nativeColor});
  final Color nativeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
