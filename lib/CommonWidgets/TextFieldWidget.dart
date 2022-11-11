import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Color borderColor;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final TextCapitalization textCapitalization;
  final String hintText;
  final bool obscureText;
  final int maxLength;

  const TextFieldWidget(
    this.borderColor,
    this.controller,
    this.inputType,
    this.inputAction,
    this.textCapitalization,
    this.hintText,
    this.obscureText,
    this.maxLength, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          textInputAction: inputAction,
          controller: controller,
          keyboardType: inputType,
          textCapitalization: textCapitalization,
          cursorColor: blueColor,
          maxLines: 1,
          obscureText: obscureText,
          maxLength: maxLength,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          //validator: (value) => Validation.validateValue(value, hintText),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            counterText: '',
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: blackColor.withOpacity(0.5)),
          ),
        ),
      ),
    );
  }
}
