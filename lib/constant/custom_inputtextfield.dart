import 'package:flutter/material.dart';

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
            height: size.height * 0.06  ,
            width: size.width * 0.8,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8.0))),
        TextFormField(

          maxLength: maxLength,
          style: const TextStyle(fontFamily: "oswald", color: Colors.black),
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
  InputDecoration inputDecoration(String hintText,{IconButton? iconButton, Widget? prefixIcon, String? labelText,}){
  return InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
      hintText: hintText,
      labelText: labelText,
      counterText: "",
      labelStyle: const TextStyle(
          fontFamily: "oswald",
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black87),
      hintStyle: const TextStyle(
          fontFamily: "oswald",
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(168, 167, 167, 1)),
      
          prefixIcon: prefixIcon,
          suffixIcon: iconButton,
      filled: false,
      fillColor: const Color(0xFFF5F7FB),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)));
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
  InputDecoration inputDecoration(String hintText,{IconButton? iconButton, Widget? prefixIcon, String? labelText,}){
  return InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
      hintText: hintText,
      labelText: labelText,
      counterText: "",
      labelStyle: const TextStyle(
          fontFamily: "oswald",
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black87),
      hintStyle: const TextStyle(
          fontFamily: "oswald",
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(168, 167, 167, 1)),
      
          prefixIcon: prefixIcon,
          suffixIcon: iconButton,
      filled: false,
      fillColor: const Color(0xFFF5F7FB),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.grey)));
  }

}
