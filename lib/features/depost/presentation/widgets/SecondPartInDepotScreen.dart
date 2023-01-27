import 'package:flutter/cupertino.dart';
import 'package:training/core/utils/tesxts.dart';

import '../../../../core/utils/colors.dart';

Container SecondPartInDepotScreen() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: whiteColor, borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowInSecondPartInDepotScreen(
            leading: "Total Balance",
            leadingFontSize: 15,
            trailingFontSize: 18,
            leadingWeight: FontWeight.w700,
            trailingWeight: FontWeight.w900,
            trailing: "155500 EGP",
            trailingColor: darkGrey),
        RowInSecondPartInDepotScreen(
          leading: "Gold 24k",
          trailing: "100 Gram",
        ),
        RowInSecondPartInDepotScreen(
            leading: "Silver",
            trailing: "100 Grams",
           ),
        RowInSecondPartInDepotScreen(
            leading: "100 Grams",
            trailing: "1.5KG",
           ),
        RowInSecondPartInDepotScreen(
          leading: "Gold 18k",
          trailing: "1.5KG",
        ),
      ],
    ),
  );
}

Padding RowInSecondPartInDepotScreen(
    {required String leading,
    required String trailing,
    Color? trailingColor,
      double?leadingFontSize,
      double?trailingFontSize,
      double?fontSize,
    FontWeight? trailingWeight,
    FontWeight? leadingWeight}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          text: leading,
          textColor: blackColor,
          fontWeight: leadingWeight??FontWeight.w600,
          fontSize: leadingFontSize??13,
        ),

    AppText(
      text: trailing,
      textColor: trailingColor ?? blackColor,
      fontSize: trailingFontSize??13,
      fontWeight: trailingWeight??FontWeight.w600,
    ),

      ],
    ),
  );
}
