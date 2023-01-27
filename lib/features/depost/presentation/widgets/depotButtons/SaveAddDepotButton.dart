import 'package:flutter/cupertino.dart';
import 'package:training/core/shared/default_button.dart';

import '../../../../../core/utils/colors.dart';
import '../../DepotBloc/depotBloc.dart';

Widget SaveAddedDepotButton({required BuildContext context,required DepotBloc cubit}) {
  return DefaultButton(
    buttonLabel: "Save",
    buttonBackgroundColor: darkGrey,
    buttonLabelColor: whiteColor,
    buttonAction: () {
      if(cubit.formKey.currentState!.validate()){

        Navigator.pop(context);
      }

    },
  );
}
