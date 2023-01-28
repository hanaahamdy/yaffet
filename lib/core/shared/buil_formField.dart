import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';

class BuildTextFormField extends StatelessWidget {
  final String hint;
  Icon? prefixIcon;
  final void Function(String?)? onsaved;
  final TextEditingController? controller;

  BuildTextFormField(
      {super.key,
      required this.hint,
      this.onsaved,
      this.controller,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(height: 45,

      child: TextFormField(
        controller: controller,
        onSaved: onsaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "field is required and can't be empty";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(fillColor: whiteColor,filled: true,
            prefixIcon: prefixIcon != null ? Icon(Icons.title) : null,
            hintText: hint,
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder()),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10));
}
