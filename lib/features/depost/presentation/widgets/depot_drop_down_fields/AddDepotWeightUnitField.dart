import 'package:flutter/cupertino.dart';

import '../../../../../core/shared/build_row.dart';
import '../../../../../core/shared/dropDownButton.dart';
import '../../DepotBloc/depotBloc.dart';

RowOfLeadingAndDropDown AddDepotWeightField(DepotBloc cubit) {
  return RowOfLeadingAndDropDown(
    leading: "Weight unit",
    child: Expanded(
      child: CustomDropDownButton(
        onchange: (String? value) {
          cubit.depotWeightUnit(value);
        },
        selected: cubit.selectedDepotWeightValue,
        dropDownItems: cubit.depotWeightUnitDropDownItems ,
        dropdownHintText: 'select weight',
      ),
    ),
  );
}