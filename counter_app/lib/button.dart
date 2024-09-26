import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String buttonName;
  const Button({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: const BoxDecoration(
          color: Colors.yellow
      ),
      child: Center(child: Text(buttonName),),
    );
  }
}
