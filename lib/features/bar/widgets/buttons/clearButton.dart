import 'package:flutter/cupertino.dart';

import '../../../../core/utils/colors.dart';
import '../../../shared/default_button.dart';

DefaultButton clearButton({required BuildContext context}) {
  return DefaultButton(
    buttonAction: () {
      Navigator.pop(context);
    },
    buttonLabel: "Clear",
    buttonBackgroundColor: clearButtonColor,
    buttonPadding: 2,
    buttonWidth: 80,
    buttonLabelColor: whiteColor,
  );
}