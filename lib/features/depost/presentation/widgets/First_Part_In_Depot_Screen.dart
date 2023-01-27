import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/tesxts.dart';
import 'depotListView.dart';
import 'depot_button.dart';

Card FirstPartInDepotScreen(double screenHeight, double screenWidth) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: AppText(
            text: "My Depot",
            fontSize: 16,
            textColor: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: screenHeight * .03,
        ),
        DepotListView(screenHeight, screenWidth),
        depotButton(),
        SizedBox(
          height: screenHeight * .02,
        ),
      ],
    ),
  );
}