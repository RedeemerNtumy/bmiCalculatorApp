import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  BmiCard({required this.nativeColor, this.cardChild, this.gesture});
  final Color nativeColor;
  final Widget? cardChild;
  final VoidCallback? gesture;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesture,
      child: Container(
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
      ),
    );
  }
}
