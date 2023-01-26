import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/core/utils/tesxts.dart';
import '../../../../core/utils/colors.dart';
import '../../../shared/default_button.dart';
import '../../data/chartBloc/Chartloc.dart';

DefaultButton getHeighestPriceButton(
    {required BuildContext context, required ChartBloc cubit}) {
  return DefaultButton(
    buttonAction: () {
      showDialog(
          context: context,
          builder: (context) {
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

                  DefaultButton(
                    buttonLabel: "Get",
                    buttonBackgroundColor: darkGrey,
                    buttonAction: () {
                      Navigator.pop(context);
                    },
                    buttonLabelColor: whiteColor,
                  )
                ],
              ),
            );
          });
    },
    buttonLabel: "Get highest Price",
    buttonBackgroundColor: darkGrey,
    buttonLabelColor: whiteColor,
  );
}
