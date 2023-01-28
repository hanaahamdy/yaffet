
import 'package:flutter/material.dart';
import 'package:training/features/settings/presentation/widgets/settingAppBar.dart';
import 'package:training/features/settings/presentation/widgets/settingCurrencyField.dart';
import 'package:training/features/settings/presentation/widgets/settingPureGoldField.dart';
import 'package:training/features/settings/presentation/widgets/settingsPushNotificationField.dart';

import '../../../../core/utils/colors.dart';
import '../buttons/settingSaveutton.dart';
import '../settingBloc/settingBloc.dart';
import 'ChangeLanguageField.dart';
import 'SettingWeightUnitField.dart';

Card SettingBody(double screenHeight, SettingsBloc cubit) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
    color: whiteColor,
    elevation: 10,
    child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 12, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingAppBar(),
          SizedBox(
            height: screenHeight * .03,
          ),
          ChangeLanguageField(cubit: cubit),
          SizedBox(
            height: screenHeight * .033,
          ),
          SettingsWeightUnitField(cubit: cubit),
          SizedBox(
            height: screenHeight * .033,
          ),
          SettingsPureGold(cubit: cubit),
          SizedBox(
            height: screenHeight * .033,
          ),
          SettingsCurrencyField(cubit: cubit),
          SizedBox(
            height: screenHeight * .033,
          ),
          SettingsNotificationField(cubit: cubit),
          SizedBox(
            height: screenHeight * .05,
          ),
          SettingsSaveButton(),
          SizedBox(
            height: screenHeight * .05,
          ),
        ],
      ),
    ),
  );
}