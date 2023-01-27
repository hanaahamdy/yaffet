import 'package:flutter/cupertino.dart';

import '../../../../../core/shared/build_row.dart';
import '../../../../../core/shared/dropDownButton.dart';
import '../../DepotBloc/depotBloc.dart';

RowOfLeadingAndDropDown AddDepotPureGoldField(DepotBloc cubit) {
  return RowOfLeadingAndDropDown(
    leading: "Pure gold",
    child: Expanded(
      child: CustomDropDownButton(
        onchange: (String? value) {
          cubit.depotPureGold(value);
        },
        selected: cubit.selectedDepotPureGold,
        dropDownItems: cubit.depotPureDropDownItems ,
        dropdownHintText: 'select pure',
      ),
    ),
  );
}