import 'package:flutter/material.dart';

import '../../../../core/cubits/app_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../data/chartBloc/Chartloc.dart';
import 'build_row.dart';
import '../../../shared/dropDownButton.dart';

Widget DropDownWeightUnit(
    {

    required ChartBloc cubit}) {
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
