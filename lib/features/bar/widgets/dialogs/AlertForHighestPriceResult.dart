import 'package:flutter/material.dart';
import 'package:training/core/cubits/app_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/tesxts.dart';
import '../../../../core/shared/default_button.dart';
import '../buttons/clearButton.dart';
import '../buttons/getButton.dart';
import '../getHighestPriceRsult.dart';

DefaultButton GetButtonAction(BuildContext context,
    {required AppBloc cubit}) {
  return DefaultButton(
    buttonLabel: "Get",
    buttonBackgroundColor: darkGrey,
    buttonAction: () {

      showDialog(
          barrierDismissible:false,
          context: context,
          builder: (context) {
            return AlertDialog(
                title: AppText(
                  text: "Highest Gold Price EGP Close",
                  textColor: blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                actionsAlignment: MainAxisAlignment.center,
                actions: [
                  clearButton(context: context),
                  GetAnotherButton(context: context, cubit: cubit)
                ],
                content: HighestPriceResult(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)));
          });
    },
    buttonLabelColor: whiteColor,
  );
}
