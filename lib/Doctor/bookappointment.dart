// ignore_for_file: camel_case_types

import 'package:balsam/CommonWidgets/text_filed.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';

class Book_appoint extends StatefulWidget {
  Book_appoint({Key? key}) : super(key: key);

  @override
  State<Book_appoint> createState() => _Book_appointState();
}

class _Book_appointState extends State<Book_appoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'APPOINTMENT',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Schedule',
                style: TextStyle(color: Colors.black87),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Datess(
                    'SUN',
                    '21',
                    Colors.white,
                    Colors.black,
                  ),
                  Datess(
                    'MON',
                    '22',
                    Colors.white,
                    Colors.black,
                  ),
                  Datess(
                    'TUE',
                    '23',
                    Colors.white,
                    Colors.black,
                  ),
                  Datess(
                    'WED',
                    '24',
                    Colors.blue,
                    Colors.white,
                  ),
                  Datess(
                    'THU',
                    '25',
                    Colors.white,
                    Colors.black,
                  ),
                  Datess(
                    'FRI',
                    '26',
                    Colors.white,
                    Colors.black,
                  ),
                  Datess(
                    'SAT',
                    '27',
                    Colors.white,
                    Colors.black,
                  ),
                  Datess(
                    'SUN',
                    '27',
                    Colors.white,
                    Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonMOnEVE(
                      icoon: Icons.light_mode_rounded,
                      text: 'MORNING',
                      clr: const Color(0xFFFA4D71),
                      TXTclr: Colors.white,
                      Iconsclr: Colors.white),
                  ButtonMOnEVE(
                      icoon: Icons.wb_twilight_rounded,
                      text: 'EVENING',
                      clr: const Color(0xFFF0F3F8),
                      TXTclr: Colors.black,
                      Iconsclr: Colors.black),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Wrap(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 15,
                runSpacing: 13,
                children: [
                  smallboxes(
                    txt: '09:00AM',
                    txtcolor: Colors.black54,
                    backcolor: const Color(0xFFF0F3F8),
                  ),
                  smallboxes(
                    txt: '09:30AM',
                    txtcolor: Colors.black54,
                    backcolor: const Color(0xFFF0F3F8),
                  ),
                  smallboxes(
                    txt: '10:00AM',
                    txtcolor: Colors.white,
                    backcolor: const Color(0xFFFA4D71),
                  ),
                  smallboxes(
                    txt: '10:30AM',
                    txtcolor: Colors.black54,
                    backcolor: const Color(0xFFF0F3F8),
                  ),
                  smallboxes(
                    txt: '11:30AM',
                    txtcolor: Colors.black54,
                    backcolor: const Color(0xFFF0F3F8),
                  ),
                  smallboxes(
                    txt: '12:30AM',
                    txtcolor: Colors.black54,
                    backcolor: const Color(0xFFF0F3F8),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Patient Details:',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                'First Name*:',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text_Felid('First Name', const Icon(null)),
              const Text(
                'Last Name*:',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text_Felid('Last Name', const Icon(null)),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Age*:',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text_Felid('25 - 30', const Icon(Icons.expand_more_outlined)),
              const SizedBox(
                height: 30,
              ),
              Text_Felid('Gender*', const Icon(null)),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 55,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue, //
                    ),
                    child: const Center(
                      child: Text(
                        'MALE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white, //
                    ),
                    child: const Center(
                      child: Text(
                        'FEMALE',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Whats is your Problem*:',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text_Felid('Whats is your Problem*', const Icon(null)),
              const SizedBox(
                height: 15,
              ),
              button("BOOK APPOINTMENT", Colors.blue, Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

class smallboxes extends StatelessWidget {
  String txt;
  Color txtcolor;
  Color backcolor;

  smallboxes({
    required this.txt,
    required this.txtcolor,
    required this.backcolor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backcolor,
        //
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(color: txtcolor),
        ),
      ),
    );
  }
}

class ButtonMOnEVE extends StatelessWidget {
  String text;
  Color clr;
  Color? Iconsclr;
  Color TXTclr;

  IconData? icoon;
  ButtonMOnEVE({
    required this.text,
    required this.clr,
    this.Iconsclr,
    required this.TXTclr,
    this.icoon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: clr, //
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icoon, //light_mode_rounded,
            color: Iconsclr,
          ),
          Text(
            text,
            style: TextStyle(color: TXTclr),
          ),
        ],
      ),
    );
  }
}

class Datess extends StatelessWidget {
  String? day;
  String? dates;
  Color? con;
  Color? txtcol;
  Datess(
    this.day,
    this.dates,
    this.con,
    this.txtcol, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: con,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day!,
            style: TextStyle(fontSize: 12, color: txtcol),
          ),
          Text(
            dates!,
            style: TextStyle(fontSize: 13, color: txtcol),
          ),
        ],
      ),
    );
  }
}
