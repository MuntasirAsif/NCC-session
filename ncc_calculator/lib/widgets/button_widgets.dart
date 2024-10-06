import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  final String buttonText;
  Color buttonTextColor;
  final tap;
  ButtonWidgets({super.key, required this.buttonText, this.buttonTextColor = Colors.white, required this.tap});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: tap,
      child: Container(
        width: deviceWidth * 0.22,
        height: deviceWidth * 0.22,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor, fontSize: 30),
        )),
      ),
    );
  }
}
