import 'package:balsam/CommonWidgets/text_filed.dart';
import 'package:balsam/Doctor/appointmentScreen.dart';
import 'package:balsam/Doctor/home_dr_page.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import '../components/docproFileTile.dart';

class Dr_page extends StatefulWidget {
  const Dr_page({Key? key}) : super(key: key);

  @override
  State<Dr_page> createState() => _Dr_pageState();
}

class _Dr_pageState extends State<Dr_page> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          'DOCTORS LIST',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              ),
              child: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
            ),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.black54),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dr_page()),
              ),
              child: Icon(
                Icons.business_center_outlined,
                color: Colors.grey,
              ),
            ),
            title: const Text(
              'Doctors',
              style: TextStyle(color: Colors.black54),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myappointment()),
              ),
              child: Icon(
                Icons.calendar_month_outlined,
                color: Colors.grey,
              ),
            ),
            title: const Text(
              'Calendar ',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              ),
              child: Icon(
                Icons.grid_view_outlined,
                color: Colors.grey,
              ),
            ),
            title: const Text(
              'Profile',
              style: TextStyle(color: Colors.black54),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Text_Felid(
              'Doctor Name, Categories',
              InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage_APP()),
                      ),
                  child: const Icon(Icons.search_outlined))),
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
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Appoint_Screen()),
            ),
            child: Doctor_Profile_Tile('CARDIOLOGY', 'Dr . Shirley D. Howard ',
                '7 Year Experience', "348"),
          ),
          const SizedBox(
            height: 7,
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Appoint_Screen()),
            ),
            child: Doctor_Profile_Tile('PSYCHOLOGY', 'Dr. Jhon V. Robinson ',
                '4 Year Experience', "198"),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Appoint_Screen()),
            ),
            child: Doctor_Profile_Tile('HEART SURGEON', 'Dr. Harry P. Johnson ',
                '9 Year Experience', "348"),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Appoint_Screen()),
            ),
            child: Doctor_Profile_Tile('ORTHODONTIST', 'Dr . Garvey D. Howard ',
                '7 Year Experience', "348"),
          ),
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
