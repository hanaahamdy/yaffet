import 'package:flutter/cupertino.dart';
import '../../data/chartBloc/Chartloc.dart';
import 'build_row.dart';

import '../../../../core/cubits/app_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../../shared/dropDownButton.dart';

Widget DropDownGoldPurityUnit({
   required ChartBloc cubit,}) {
  return ChartPageItemField(
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


