import 'package:flutter/cupertino.dart';
import 'package:training/core/shared/dropDownButton.dart';
import 'package:training/features/settings/presentation/settingBloc/settingBloc.dart';

import '../../../../core/shared/build_row.dart';

Widget SettingsCurrencyField({required SettingsBloc cubit}) {
  return RowOfLeadingAndDropDown(
    leading: "Currency",
    child: Expanded(
        child: CustomDropDownButton(
          onchange: (String? value) {},
          selected:cubit.settingsCurrency ,
          dropDownItems: cubit.settingCurrencyDropDwnMenu,
          dropdownHintText: "currency",
        )),
  );
}