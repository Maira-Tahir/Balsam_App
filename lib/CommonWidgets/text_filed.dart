// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Text_Felid extends StatelessWidget {
  Text_Felid(this.label_text, this.iconname, {Key? key}) : super(key: key);
  String label_text;
  Widget iconname;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: label_text,
          labelStyle: const TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w500),
          border: InputBorder.none,
          filled: true,
          suffixIcon: iconname,
          fillColor: const Color(0xffEFF4F8),
        ),
      ),
    );
  }
}
