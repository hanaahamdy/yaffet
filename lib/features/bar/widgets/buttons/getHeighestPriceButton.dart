import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/cubits/app_bloc.dart';
import '../dialogs/AlertForRadioButtonSelction.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/shared/default_button.dart';

DefaultButton getHeighestPriceButton(
    {required BuildContext context, required AppBloc cubit}) {
  return DefaultButton(
    buttonAction: () {
      showDialog(barrierDismissible:false,
          context: context,
          builder: (context) {
            return AlertforselectRadio(cubit: cubit, context: context);
          });
    },
    buttonLabel: "Get highest Price",
    buttonBackgroundColor: darkGrey,
    buttonLabelColor: whiteColor,
  );
}
