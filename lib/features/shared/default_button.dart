import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';

import '../../../../core/utils/tesxts.dart';
class DefaultButton extends StatelessWidget {
  final Color? buttonBackgroundColor;
  final Color? buttonLabelColor;
  final String buttonLabel;
  VoidCallback?buttonAction;

  DefaultButton(
      {required this.buttonLabel,
  this.buttonAction,
      super.key,
      required this.buttonBackgroundColor,
    this.buttonLabelColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 40),
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
