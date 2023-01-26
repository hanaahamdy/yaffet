import 'package:flutter/material.dart';
import '../../data/chartBloc/Chartloc.dart';
import 'build_row.dart';

import '../../../../core/cubits/app_bloc.dart';
import '../../../../core/utils/colors.dart';

import '../../../shared/dropDownButton.dart';

Widget DropDownCurrencyUnit(
    {
    required ChartBloc cubit}) {
  return ChartPageItemField(
      leading: "Currency",
      child: Expanded(
        child: CustomDropDownButton(
          onchange: (String? value) {
            cubit.dropDownCurrency(value);
          },
          selected: cubit.currency,
          dropDownItems: [
            "EGP",
            "DOL",
            "RIL",
          ],
          dropdownHintText: "Select currency",
        ),
      ),
  );
}

