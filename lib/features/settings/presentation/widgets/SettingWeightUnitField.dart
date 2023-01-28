import 'package:flutter/cupertino.dart';
import 'package:training/core/shared/dropDownButton.dart';
import 'package:training/features/settings/presentation/settingBloc/settingBloc.dart';

import '../../../../core/shared/build_row.dart';

Widget SettingsWeightUnitField({required SettingsBloc cubit}) {
  return RowOfLeadingAndDropDown(
    leading: "Weight unit",
    child: Expanded(
        child: CustomDropDownButton(
          onchange: (String? value) {},
          selected:cubit.settingsWeightUnit ,
          dropDownItems: cubit.settingWeightUnitDropDwnMenu,
          dropdownHintText: "select weight",
        )),
  );
}