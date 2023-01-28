import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_bloc.dart';
import '../../../core/cubits/app_states.dart';
import '../widgets/FirstPartInChartScreen.dart';
import '../widgets/build_table.dart';

import '../widgets/drawChart.dart';


class ChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<AppBloc, AppStates>(
      builder: (context, state) {
        AppBloc cubit = AppBloc.get(context);
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FirstCArfInChartScreen(cubit, screenHeight),
                SizedBox(
                  height: screenHeight * .02,
                ),
                DrawChart(),
                //ChartScreen()
                SizedBox(
                  height: screenHeight * .02,
                ),
                buildTable(screenHeight, cubit: cubit, context: context),

                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
