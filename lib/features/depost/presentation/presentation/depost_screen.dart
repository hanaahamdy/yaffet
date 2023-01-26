import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_bloc.dart';
import 'package:training/core/cubits/app_states.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/tesxts.dart';
import '../../../person_alert/presentation/widgets/alert_item.dart';
import '../../../person_alert/presentation/widgets/buildAlertListView.dart';
import '../widgets/depotListView.dart';
import '../widgets/depot_button.dart';

class DepostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<AppBloc, AppStates>(builder: (context, state) {
      return Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AppText(
                text: "My Depot",
                fontSize: 16,
                textColor: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: screenHeight * .05,
            ),
            DepotListView(screenHeight, screenWidth),
            SizedBox(
              height: screenHeight * .02,
            ),
            depotButton()
          ],
        ),
      ));
    });
  }
}
