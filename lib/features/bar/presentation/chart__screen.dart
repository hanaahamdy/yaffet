import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_bloc.dart';
import 'package:training/core/utils/colors.dart';
import 'package:training/core/utils/tesxts.dart';
import '../../../core/cubits/app_states.dart';
import '../widgets/page_titels/SelectedCountryInChartPage.dart';
import '../widgets/build_table.dart';
import '../widgets/buttons/calculate_button.dart';
import '../widgets/drawChart.dart';
import '../widgets/drop_down_fields/DropDownGoldUnit.dart';
import '../widgets/drop_down_fields/Drop_Down_Weight_Unit.dart';
import '../widgets/drop_down_fields/drop_down_currency_unit.dart';
import '../widgets/drop_down_fields/weight_value_Form_field.dart';
import '../widgets/page_titels/first_Row_in_chart_screen.dart';
import '../widgets/buttons/getHeighestPriceButton.dart';

class ChartPage extends StatelessWidget {
  TextEditingController textFormFieldController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return  BlocBuilder<AppBloc, AppStates>(
        builder: (context, state) {
          AppBloc cubit = AppBloc.get(context);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * .05,
                  ),
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
                      textFormFieldController: textFormFieldController),

                  DropDownWeightUnit(cubit: cubit),
                  DropDownGoldPurityUnit(cubit: cubit),
                  DropDownCurrencyUnit(cubit: cubit),
                  SizedBox(
                    height: screenHeight * .01,
                  ),
                  calculate_button(),
                  SizedBox(
                    height: screenHeight * .04,
                  ),
                  DrawChart(),
                  //ChartScreen()
                  SizedBox(
                    height: screenHeight * .1,
                  ),
                  buildTable(screenHeight),

                  getHeighestPriceButton(context: context, cubit: cubit),

                  SizedBox(height: 20),
                ],
              ),
            ),
          );
        },

    );
  }
}
