import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../depost/presentation/widgets/buil_formField.dart';
import 'build_row.dart';

Widget weightValueFormField(
    {

    required TextEditingController textFormFieldController,
}) {
  return ChartPageItemField(

      leading: "Weight value",


        child: Expanded(
          child: Container(
height: 45,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: whiteColor,
            )
          ,  child: BuildTextFormField(
              controller: textFormFieldController,
              hint: "",
            ),
          ),
        ),
      
      );
}
