import 'package:flutter/material.dart';
import 'package:training/features/bar/widgets/page_titels/SelectedCountryInChartPage.dart';
import 'package:training/features/bar/widgets/page_titels/first_Row_in_chart_screen.dart';

import '../../../core/cubits/app_bloc.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/tesxts.dart';
import 'buttons/calculate_button.dart';
import 'drop_down_fields/DropDownGoldUnit.dart';
import 'drop_down_fields/Drop_Down_Weight_Unit.dart';
import 'drop_down_fields/drop_down_currency_unit.dart';
import 'drop_down_fields/weight_value_Form_field.dart';

Card FirstCArfInChartScreen(AppBloc cubit, double screenHeight) {
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FirstRowInChartScreen(),
            countryRowInChatScreen(),
            SizedBox(
              height: 15,
            ),
            AppText(text: "1 oz/EGP 12:10pm", textColor: blackColor),
            SizedBox(
              height: 35,
            ),
            weightValueFormField(
                textFormFieldController: cubit.WeightValueController),
            DropDownWeightUnit(cubit: cubit),
            DropDownGoldPurityUnit(cubit: cubit),
            DropDownCurrencyUnit(cubit: cubit),
            SizedBox(
              height: screenHeight * .01,
            ),
            calculate_button(),
          ],
        ),
      ),
    ),
  );
}
