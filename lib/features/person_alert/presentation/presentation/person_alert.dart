import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';
import 'package:training/core/utils/tesxts.dart';
import 'package:training/features/person_alert/presentation/widgets/alert_item.dart';

import '../widgets/AdNewAlertButton.dart';
import '../widgets/buildAlertListView.dart';

class PersonAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
 return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AppText(
                text: "All Alert",
                fontSize: 16,
                textColor: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: screenHeight * .05,
            ),
            buildAlertListView(screenHeight:screenHeight, screenWidth: screenWidth),
            SizedBox(
              height: screenHeight * .02,
            ),
            AddNewALertButton(),
          ],
        ),

    );
  }




}
