import 'package:flutter/material.dart';

import '../../../person_alert/presentation/widgets/alert_item.dart';

Expanded DepotListView(double screenHeight, double screenWidth) {
  return Expanded(
    child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: screenHeight * .02),
            child: AlerItem(screenWidth),
          );
        }),
  );
}