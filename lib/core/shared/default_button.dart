import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';

import '../../../../core/utils/tesxts.dart';
class DefaultButton extends StatelessWidget {
  final Color? buttonBackgroundColor;
  final Color? buttonLabelColor;
  final String buttonLabel;
  VoidCallback?buttonAction;
  double ?buttonWidth;
  double? buttonPadding;

  DefaultButton(
      {required this.buttonLabel,
  this.buttonAction,
  this.buttonPadding,
      super.key,
  this.buttonWidth,
      required this.buttonBackgroundColor,
    this.buttonLabelColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: buttonPadding??40),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(buttonWidth??double.infinity, 40),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: buttonBackgroundColor == null
                ? whiteColor
                : buttonBackgroundColor,
          ),
          onPressed:buttonAction,

          child: AppText(
            text: buttonLabel,
            textColor: buttonLabelColor==null?Colors.black:Colors.white,
          )),
    );
  }
}
