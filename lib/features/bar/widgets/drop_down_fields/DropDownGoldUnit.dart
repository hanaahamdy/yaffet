import 'package:flutter/cupertino.dart';
import '../../../../core/shared/build_row.dart';
import '../../../../core/cubits/app_bloc.dart';
import '../../../../core/shared/dropDownButton.dart';

Widget DropDownGoldPurityUnit({
   required AppBloc cubit,}) {
  return RowOfLeadingAndDropDown(
    leading: "Gold Purity",
    child: Expanded(
      child: CustomDropDownButton(
        onchange: (String? value) {
          cubit.dropDownGoldPUrity(value);
        },
        selected: cubit.goldPurity,
        dropDownItems: [
          "OZ",
          "FG",
          "GOL",
        ],
        dropdownHintText: "Select Purity",
      ),
    ),
  );
}


