import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/tesxts.dart';
import '../../../shared/default_button.dart';
import '../../data/chartBloc/Chartloc.dart';
import '../buttons/clearButton.dart';
import '../buttons/getButton.dart';
import '../getHighestPriceRsult.dart';

DefaultButton GetButtonAction(BuildContext context,{required ChartBloc cubit}) {
  return DefaultButton(
    buttonLabel: "Get",
    buttonBackgroundColor: darkGrey,
    buttonAction: () {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: AppText(
                text: "Highest Gold Price EGP Close",
                textColor: blackColor,
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),
              contentPadding:
              EdgeInsets.symmetric(vertical: 10),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                clearButton(context: context),
                GetAnotherButton(context: context,cubit:cubit )
              ],
              content: HighestPriceResult(),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)) );
          });
    },
    buttonLabelColor: whiteColor,
  );
}


