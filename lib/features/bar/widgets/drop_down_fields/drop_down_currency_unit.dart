import 'package:flutter/material.dart';
import '../../../../core/shared/build_row.dart';

import '../../../../core/cubits/app_bloc.dart';


import '../../../../core/shared/dropDownButton.dart';

Widget DropDownCurrencyUnit(
    {
    required AppBloc cubit}) {
  return RowOfLeadingAndDropDown(
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

