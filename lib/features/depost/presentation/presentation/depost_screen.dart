import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_bloc.dart';
import 'package:training/core/cubits/app_states.dart';
import 'package:training/features/depost/presentation/DepotBloc/depotBloc.dart';
import 'package:training/features/depost/presentation/DepotBloc/depottates.dart';
import '../widgets/depotButtons/AddNewDepotButton.dart';

import '../widgets/First_Part_In_Depot_Screen.dart';
import '../widgets/SecondPartInDepotScreen.dart';

class DepostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<DepotBloc, DepotStates>(
      builder: (context, state) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                FirstPartInDepotScreen(screenHeight, screenWidth,
                    context: context),
                SizedBox(
                  height: screenHeight * .01,
                ),
                SecondPartInDepotScreen()
              ],
            ),
          ),
        ));
      },
    );
  }
}
