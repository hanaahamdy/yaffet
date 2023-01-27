import 'package:flutter/cupertino.dart';

import '../../../../../core/shared/build_row.dart';
import '../../../../../core/shared/dropDownButton.dart';
import '../../DepotBloc/depotBloc.dart';

RowOfLeadingAndDropDown AddDepotCurrency(DepotBloc cubit) {
  return RowOfLeadingAndDropDown(
    leading: "Currency",
    child: Expanded(
      child: CustomDropDownButton(
        onchange: (String? value) {
          cubit.depotCurrency(value);
        },
        selected: cubit.selectedDepotCurrency,
        dropDownItems: cubit.depotCurrencyDropDownItems ,
        dropdownHintText: 'select currency',
      ),
    ),
  );
}