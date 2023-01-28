import 'package:flutter/material.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/tesxts.dart';
import 'depotListView.dart';
import 'depotButtons/AddNewDepotButton.dart';

Card FirstPartInDepotScreen(double screenHeight, double screenWidth,
    {required BuildContext context}) {
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13, top: 10),
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
        depotButton(context: context),
        SizedBox(
          height: screenHeight * .02,
        ),
      ],
    ),
  );
}
