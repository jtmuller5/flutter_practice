import 'package:flutter/material.dart';

class FlossyTitle extends StatelessWidget {
  final String text;
  final Color textColor;
  final TextAlign? alignment;

  const FlossyTitle({Key? key, required this.text, this.textColor = Colors.black, this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: alignment,
        style: TextStyle(
          color: textColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ));
  }
}
