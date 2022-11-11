import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:balsam/AppUtils/utils.dart';

Widget BoldText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
  );
}

Widget redText(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red.shade700),
  );
}

Widget grayText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 12, color: Colors.grey),
  );
}

Widget grayText2(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 15, color: Colors.grey),
  );
}
