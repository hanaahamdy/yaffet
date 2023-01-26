import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  final String text;
  Color? textColor;
  double? fontSize;
  FontWeight? fontWeight;
  TextBaseline ?textBaseline;

  AppText

  (
  {super.key,
  required this.text,
  this.fontWeight,
  this.textBaseline,
  required this.textColor,this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight,
          textBaseline
          :textBaseline),
    );
  }
}
