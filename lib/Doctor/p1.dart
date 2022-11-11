import 'package:balsam/Doctor/home_dr_page.dart';
import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({Key? key}) : super(key: key);

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'SEARCH DOCTORS',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: const HomePage_APP(),
    );
  }
}
