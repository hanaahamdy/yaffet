import 'package:flutter/material.dart';
import 'package:training/core/cubits/app_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/shared/default_button.dart';
import '../dialogs/AlertForRadioButtonSelction.dart';

DefaultButton GetAnotherButton(
    {required BuildContext context, required AppBloc cubit}) {
  return DefaultButton(
    buttonAction: () {
      Navigator.pop(context);
      AlertforselectRadio(cubit: cubit,context: context);
    },
    buttonLabel: "Get another",
    buttonBackgroundColor: darkGrey,
    buttonPadding: 2,
    buttonLabelColor: whiteColor,
    buttonWidth: 120,
  );
}
