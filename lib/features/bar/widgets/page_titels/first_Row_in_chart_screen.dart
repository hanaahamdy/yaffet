import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';
import 'package:training/core/utils/tesxts.dart';

Widget FirstRowInChartScreen() {
  return Row(
    children: [
      AppText(
        text: "Gold",
        textColor: goldColor,
        fontSize: 27,
        fontWeight: FontWeight.bold,
      ),
      SizedBox(
        width: 5,
      ),
      AppText(
        text: "change",
        textColor: blueColor,
        textBaseline: TextBaseline.alphabetic,
      ),
      Spacer(),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                AppText(
                  text: "1805 EGP",
                  textColor: greenColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                Icon(
                  Icons.arrow_drop_up,
                  color: greenColor,
                  size: 30,
                )
              ],
            ),
            AppText(text: "(2.5%) +2EGP", textColor: greenColor)
          ],
        ),
      )
    ],
  );
}
