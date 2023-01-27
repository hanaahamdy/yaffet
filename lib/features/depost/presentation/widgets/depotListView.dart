import 'package:flutter/material.dart';

import '../../../person_alert/presentation/widgets/alert_item.dart';


Widget DepotListView(double screenHeight, double screenWidth) {
  return ListView.builder(physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: screenHeight * .02,
              left: screenWidth * .02,
              right: screenWidth * .02),
          child: Column(
            children: [
              AlerItem(screenWidth),
            ],
          ),
        );
      });
}
