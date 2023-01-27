import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/utils/tesxts.dart';

import '../cubits/app_bloc.dart';
import '../cubits/app_states.dart';
import '../utils/colors.dart';

class CustomDropDownButton extends StatelessWidget {
  final List<String> dropDownItems;
  final String dropdownHintText;
  final String? selected;
  Function(String? value) onchange;

  CustomDropDownButton(
      {required this.onchange,
      required this.selected,
      super.key,
      required this.dropDownItems,
      required this.dropdownHintText});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppStates>(builder: (contex, statet) {

      return DropdownButtonFormField(

          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "please select First";
            }
          },
          hint: AppText(
            text: dropdownHintText,
            textColor: Colors.grey,
          ),
          decoration: InputDecoration(fillColor: whiteColor,filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12))),
          value: selected,
          items: dropDownItems
              .map((e) => DropdownMenuItem(
                    child: Text("$e"),
                    value: e,
                  ))
              .toList(),
          onChanged: onchange);
    });
  }
}
