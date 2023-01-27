import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/core/utils/tesxts.dart';
import '../dialogs/AlertForHighestPriceResult.dart';
import '../dialogs/AlertForRadioButtonSelction.dart';
import '../getHighestPriceRsult.dart';
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
            return AlertforselectRadio( cubit: cubit,context:context);
          });
    },
    buttonLabel: "Get highest Price",
    buttonBackgroundColor: darkGrey,
    buttonLabelColor: whiteColor,
  );
}
