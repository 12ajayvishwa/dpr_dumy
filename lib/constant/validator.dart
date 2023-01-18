import 'package:flutter/material.dart';

String? nameValidator(value, BuildContext context, String msg) {
  // RegExp regex = RegExp('^[a-zA-Z]+(?:s[a-zA-Z]+)?');
  if (value!.isEmpty) {
    return msg;
  }

  // if (!regex.hasMatch(value.toString())) {
  //   return ;
  // }
  return null;
}

translation(BuildContext context) {
}

String? titleValidator(value) {
  RegExp regex = RegExp(r'^.{8,}$');
  if (value!.isEmpty) {
    return ("Please enter title");
  }
  if (!regex.hasMatch(value)) {
    return ("Enter Valid title (Min. 8 Character)");
  }
  return null;
}