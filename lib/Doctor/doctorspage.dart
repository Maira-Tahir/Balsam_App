import 'package:balsam/CommonWidgets/text_filed.dart';
import 'package:flutter/material.dart';
import '../components/docproFileTile.dart';

class Dr_page extends StatelessWidget {
  const Dr_page({Key? key}) : super(key: key);

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
          'DOCTORS LIST',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Text_Felid(
              'Doctor Name, Categories', const Icon(Icons.search_outlined)),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (Colors.blue),
                ),
                child: const Center(
                    child: Text(
                  'ALL',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                )),
              ),
              Container2(
                name: 'PSYCHOLOGY',
              ),
              Container2(name: 'CARDIOLOGY'),
            ],
          ),
          Doctor_Profile_Tile('CARDIOLOGY', 'Dr . Shirley D. Howard ',
              '7 Year Experience', "348"),
          const SizedBox(
            height: 7,
          ),
          Doctor_Profile_Tile('PSYCHOLOGY', 'Dr. Jhon V. Robinson ',
              '4 Year Experience', "198"),
          Doctor_Profile_Tile('HEART SURGEON', 'Dr. Harry P. Johnson ',
              '9 Year Experience', "348"),
          Doctor_Profile_Tile('ORTHODONTIST', 'Dr . Garvey D. Howard ',
              '7 Year Experience', "348"),
        ]),
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  String name;
  Container2({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFFFFE),
      ),
      child: Center(
          child: Text(
        name,
        style:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
      )),
    );
  }
}
