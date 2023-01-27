import 'package:flutter/material.dart';

import '../../../../../core/shared/buil_formField.dart';
import '../../../../../core/shared/build_row.dart';
import '../../../../../core/utils/colors.dart';
import '../../DepotBloc/depotBloc.dart';

RowOfLeadingAndDropDown AddDepotWeightValueField(DepotBloc cubit) {
  return RowOfLeadingAndDropDown(
      leading: "Weight value",
      child: Expanded(
        child: BuildTextFormField(
          controller: cubit.depotWeightValueController,
          hint: "Enter weight",
        ),
      ));
}
