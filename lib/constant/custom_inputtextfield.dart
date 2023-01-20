import 'package:flutter/material.dart';

import 'decoration.dart';

class CustomTextFormFields extends StatelessWidget {
  final Size size;
  final TextEditingController controller;
  final FormFieldValidator? validator;
  final String hintText;
  final int? maxLength;

  final String? labelText;
  final TextInputType? textInputType;
  final IconButton? iconButton;
  final bool? obsecureText;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  const CustomTextFormFields({
    Key? key,
    required this.size,
    required this.controller,
    this.validator,
    required this.hintText,
    this.textInputType,
    this.labelText,
    this.maxLength,
    this.prefixIcon,
    this.iconButton,
    this.obsecureText,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: size.height * 0.06,
            width: size.width * 0.8,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8.0))),
        TextFormField(
          maxLength: maxLength,
          style: const TextStyle(
            fontFamily: "oswald",
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.bottom,
          autofocus: false,
          controller: controller,
          keyboardType: textInputType,
          onSaved: (value) {
            controller.text = value!;
          },
          textInputAction: textInputAction,
          validator: validator,
          decoration: inputDecoration(
            hintText,
            labelText: labelText,
            iconButton: iconButton,
            prefixIcon: prefixIcon,
          ),
          obscureText: obsecureText ?? false,
        ),
      ],
    );
  }
}

class DescriptionField extends StatelessWidget {
  final Size size;
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final String labelText;
  final FormFieldValidator validator;
  const DescriptionField({
    Key? key,
    required this.size,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.textInputAction,
    required this.labelText,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
      child: TextFormField(
        textAlign: TextAlign.start,
        style: const TextStyle(fontFamily: "oswald", color: Colors.black),
        maxLines: 5,
        textAlignVertical: TextAlignVertical.bottom,
        autofocus: false,
        controller: controller,
        keyboardType: textInputType,
        onSaved: (value) {
          controller.text = value!;
        },
        validator: validator,
        textInputAction: textInputAction,
        decoration: inputDecoration(
          hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}

class Dob_PickerFormFields extends StatelessWidget {
  final Size size;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final FormFieldValidator? validator;
  final Widget? prefixIcon;
  final void Function()? onTap;

  const Dob_PickerFormFields({
    Key? key,
    required this.size,
    this.controller,
    this.hintText,
    this.onTap,
    this.validator,
    this.labelText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: size.height * 0.05,
            width: size.width * 0.98,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8.0))),
        TextFormField(
          controller: controller,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.datetime,
          style: const TextStyle(fontFamily: "oswald", color: Colors.black),
          onTap: onTap,
          validator: validator,
          readOnly: true,
          decoration: inputDecoration(hintText!,
              labelText: labelText, prefixIcon: prefixIcon),
        ),
      ],
    );
  }
}
