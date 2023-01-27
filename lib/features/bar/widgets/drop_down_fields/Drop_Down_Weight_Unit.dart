import 'package:flutter/material.dart';

import '../../../../core/cubits/app_bloc.dart';

import 'build_row.dart';
import '../../../../core/shared/dropDownButton.dart';

Widget DropDownWeightUnit(
    {

    required AppBloc cubit}) {
  return ChartPageItemField(
      leading: "Weight Unit",
//      screenHeight: screenHeight * .05,
      child: Expanded(
        child: CustomDropDownButton(
            selected: cubit.weight_unit,
            onchange: (String? value) {
              cubit.dropDownWeightUnitChange(value);
            },
            dropDownItems: ["os", "gh", "hh"],
            dropdownHintText: "Select unit"),
      ),
    );
}
//
