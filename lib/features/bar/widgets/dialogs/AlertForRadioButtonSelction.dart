import 'package:flutter/material.dart';
import 'package:training/core/cubits/app_bloc.dart';

import 'AlertForHighestPriceResult.dart';

Widget AlertforselectRadio({required AppBloc cubit,required BuildContext context}) {
  return AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Radio(
                value: "44.9k (99.9%)",
                groupValue: cubit.selectedRadioHeighestPrice,
                onChanged: (val) {
                  cubit.selectRadioButton(val);
                }),
//                      AppText(text: "44.9k (99.9%)", textColor: blackColor)
          ],
        ),
        Radio(
            value: "21k (91.7%)",
            groupValue: cubit.selectedRadioHeighestPrice,
            onChanged: (val) {
              cubit.selectRadioButton(val);
            }),
        Radio(
            value: "18k (75.1%)",
            groupValue: cubit.selectedRadioHeighestPrice,
            onChanged: (val) {
              cubit.selectRadioButton(val);
            }),
        Radio(
            value: "14k  (58.3%)",
            groupValue: cubit.selectedRadioHeighestPrice,
            onChanged: (val) {
              cubit.selectRadioButton(val);
            }),
        GetButtonAction(context,cubit:cubit)
      ],
    ),
  );
}
