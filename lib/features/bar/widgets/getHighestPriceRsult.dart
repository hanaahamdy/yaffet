import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';
import 'package:training/core/utils/tesxts.dart';

class HighestPriceResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AppText(
          text: "24k",
          textColor: darkBrown,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: AppText(
            text: "2800 EGP/oz",
            textColor: blackColor,
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
        AppText(
          text: DateTime.now().day.toString(),
          textColor: blackColor,
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
