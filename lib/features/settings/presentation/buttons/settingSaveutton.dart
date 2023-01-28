import 'package:flutter/material.dart';
import 'package:training/core/shared/default_button.dart';
import 'package:training/core/utils/colors.dart';

Widget SettingsSaveButton() {
  return DefaultButton(
    buttonLabel: "Save",
    buttonBackgroundColor: darkGrey,
    buttonAction: () {},
    buttonLabelColor: whiteColor,
  );
}
