import 'package:flutter/material.dart';
import 'package:training/features/depost/presentation/widgets/AdNewDepot.dart';

import '../../../../../core/shared/buil_formField.dart';
import '../../../../../core/shared/build_row.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/shared/default_button.dart';

DefaultButton depotButton({required BuildContext context}) {
  return DefaultButton(
    buttonLabel: 'Add New Depot',
    buttonBackgroundColor: darkGrey,
    buttonAction: () {
      showDialog(barrierDismissible: false,
          context: context,
          builder: (context) {
            return AddNewDepot();
          });
    },
    buttonLabelColor: whiteColor,
  );
}
