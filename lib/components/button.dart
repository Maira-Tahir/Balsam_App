import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button(this.txt, this.backclr, this.txtcclr, {Key? key}) : super(key: key);
  String txt;
  Color backclr;
  Color txtcclr;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backclr,
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          txt,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 18, color: txtcclr),
        ));
  }
}
