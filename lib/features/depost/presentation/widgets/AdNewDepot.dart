import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/shared/buil_formField.dart';
import 'package:training/core/shared/build_row.dart';
import 'package:training/features/depost/presentation/DepotBloc/depotBloc.dart';
import 'package:training/features/depost/presentation/DepotBloc/depottates.dart';
import 'package:training/features/depost/presentation/widgets/depotButtons/SaveAddDepotButton.dart';
import 'package:training/features/depost/presentation/widgets/depot_drop_down_fields/AddDepotCurrency.dart';
import '../../../../core/shared/dropDownButton.dart';
import '../../../../core/utils/colors.dart';
import 'depot_drop_down_fields/AddDepotNameField.dart';
import 'depot_drop_down_fields/AddDepotPureGoldField.dart';
import 'depot_drop_down_fields/AddDepotTypeFiel.dart';
import 'depot_drop_down_fields/AddDepotWeightUnitField.dart';
import 'depot_drop_down_fields/AddDepotWeightValueField.dart';

class AddNewDepot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepotBloc, DepotStates>(builder: (context, state) {
      DepotBloc cubit=DepotBloc.get(context);
      return AlertDialog(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Colors.grey[100],
        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 16),
        content: SingleChildScrollView(
          child: Form(key: cubit.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AddDepotNameField(cubit),
                AddDepotTypeField(cubit),
                AddDepotWeightValueField(cubit),
                AddDepotWeightField(cubit),
                AddDepotPureGoldField(cubit),
                AddDepotCurrency(cubit),
                SaveAddedDepotButton(context:context,cubit: cubit)


              ],
            ),
          ),
        ),
      );
    });
  }




}
