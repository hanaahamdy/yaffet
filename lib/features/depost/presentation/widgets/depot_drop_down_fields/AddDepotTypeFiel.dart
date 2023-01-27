import 'package:flutter/cupertino.dart';

import '../../../../../core/shared/build_row.dart';
import '../../../../../core/shared/dropDownButton.dart';
import '../../DepotBloc/depotBloc.dart';

RowOfLeadingAndDropDown AddDepotTypeField(DepotBloc cubit) {
  return RowOfLeadingAndDropDown(
    leading: "Depot type",
    child: Expanded(
      child: CustomDropDownButton(
        onchange: (String? value) {
          cubit.depotTypeDropDownButton(value);
        },
        selected: cubit.depotType,
        dropDownItems: cubit.deptDropDownItems ,
        dropdownHintText: 'select type',
      ),
    ),
  );
}