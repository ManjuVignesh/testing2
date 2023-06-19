import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextForm {
  static Widget customTextField(String HintText, String LabelText,
      Widget prefixIcon, dynamic TextController) {
    return TextFormField(
        controller: TextController,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: HintText,
            labelText: LabelText,
            border: OutlineInputBorder()));
  }
}
