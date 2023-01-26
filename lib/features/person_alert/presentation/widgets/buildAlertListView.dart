import 'package:flutter/material.dart';

import 'alert_item.dart';

Expanded buildAlertListView({required double screenHeight,required double screenWidth}) {
  return Expanded(
    child: Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: screenHeight * .02),
              child: AlerItem(screenWidth),
            );
          }),
    ),
  );
}