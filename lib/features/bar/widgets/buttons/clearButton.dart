import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/shared/default_button.dart';

DefaultButton clearButton({required BuildContext context}) {
  return DefaultButton(
    buttonAction: () {
Navigator.restorablePopAndPushNamed(context, "home");    },
    buttonLabel: "Clear",
    buttonBackgroundColor: clearButtonColor,
    buttonPadding: 2,
    buttonWidth: 80,
    buttonLabelColor: whiteColor,
  );
}