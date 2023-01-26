import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/tesxts.dart';


Card AlerItem(double screenWidth,) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)),
    elevation: 10,
    color: whiteColor,
    child: ListTile(contentPadding: EdgeInsets.all(0),
      trailing: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.drive_file_rename_outline,
                color: goldColor,
              ),
              padding: EdgeInsets.all(0),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: darkGrey,
              ),
              padding: EdgeInsets.all(0),
            )
          ],
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: AppText(
          text: " Gold 24k",
          textColor: blackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      title: SizedBox(
        width: screenWidth * .5,
      ),
    ),
  );
}