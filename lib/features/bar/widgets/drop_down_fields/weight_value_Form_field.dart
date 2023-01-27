import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/shared/buil_formField.dart';
import '../../../../core/shared/build_row.dart';

Widget weightValueFormField({
  required TextEditingController textFormFieldController,
}) {
  return RowOfLeadingAndDropDown(
    leading: "Weight value",
    child: Expanded(
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: whiteColor,
        ),
        child: BuildTextFormField(
          controller: textFormFieldController,
          hint: "",
        ),
      ),
    ),
  );
}
