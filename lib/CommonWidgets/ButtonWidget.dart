import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:flutter/material.dart';

import '../AppUtils/FontStyle.dart';

class ButtonWidget extends StatelessWidget {
  VoidCallback onPressed;
  Color color;
  String text;

  ButtonWidget(
      {super.key,
      required this.onPressed,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(
          left: 0,
          right: 0,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: whiteColor),
        ),
      ),
    );
  }
}
