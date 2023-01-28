import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:training/core/utils/colors.dart';
import 'package:training/features/settings/presentation/settingBloc/settingBloc.dart';

import '../../../../core/shared/build_row.dart';

Widget SettingsNotificationField({required SettingsBloc cubit}) {
  return RowOfLeadingAndDropDown(
    leading: "Push Notification",
    child: Expanded(
        child: Align(
      alignment: Alignment.bottomRight,
      child: Switch(
        activeColor: darkBrown,
        activeTrackColor: darkGrey,
        value: cubit.switchButtonValue,
        onChanged: (value) {
          print(value);
          cubit.settingsNotificationField(value);
        },
      ),
    )),
  );
}
