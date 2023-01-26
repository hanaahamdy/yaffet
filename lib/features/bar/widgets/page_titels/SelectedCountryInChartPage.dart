import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/tesxts.dart';

Row countryRowInChatScreen() {
  return Row(children: [
    AppText(
      text: "Egypt",
      textColor: blackColor,
      fontSize: 19,
      fontWeight: FontWeight.w900,
    ),
    SizedBox(
      width: 5,
    ),
    AppText(
      textBaseline: TextBaseline.alphabetic,
      text: "change",
      textColor: Colors.blue,
    ),
  ]);
}