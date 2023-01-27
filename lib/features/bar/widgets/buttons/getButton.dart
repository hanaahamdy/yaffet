import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../shared/default_button.dart';
import '../../data/chartBloc/Chartloc.dart';
import '../dialogs/AlertForRadioButtonSelction.dart';

DefaultButton GetAnotherButton({required BuildContext context,required ChartBloc cubit}) {
  return DefaultButton(
    buttonAction: () {
      AlertforselectRadio(context:context, cubit: cubit);
    },
    buttonLabel: "Get another",
    buttonBackgroundColor: darkGrey,
    buttonPadding: 2,
    buttonLabelColor: whiteColor,
    buttonWidth: 120,
  );
}
