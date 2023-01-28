import 'package:flutter/cupertino.dart';
import 'package:training/core/shared/dropDownButton.dart';
import 'package:training/features/settings/presentation/settingBloc/settingBloc.dart';

import '../../../../core/shared/build_row.dart';

Widget ChangeLanguageField({required SettingsBloc cubit}) {
  return RowOfLeadingAndDropDown(
    leading: "Language",
    child: Expanded(
        child: CustomDropDownButton(
      onchange: (String? value) {},
      selected:cubit.currentLanguage ,
      dropDownItems: cubit.settingLanguageDropDwnMenu,
      dropdownHintText: "select Language",
    )),
  );
}
