import 'package:flutter/cupertino.dart';
import 'package:training/core/shared/dropDownButton.dart';
import 'package:training/features/settings/presentation/settingBloc/settingBloc.dart';

import '../../../../core/shared/build_row.dart';

Widget SettingsPureGold({required SettingsBloc cubit}) {
  return RowOfLeadingAndDropDown(
    leading: "Pure gold",
    child: Expanded(
        child: CustomDropDownButton(
          onchange: (String? value) {},
          selected:cubit.settingsPureGold ,
          dropDownItems: cubit.settingPureGoldDropDwnMenu,
          dropdownHintText: "select purity",
        )),
  );
}