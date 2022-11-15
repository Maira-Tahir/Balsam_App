import 'package:balsam/Doctor/appointmentScreen.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import './p1.dart';
import './payment.dart';

class DoctorsScreen extends StatefulWidget {
  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  int _currentIndex = 0;
  PageController? _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
              _pageController!.jumpToPage(index);
            },
            children: <Widget>[
              const p1(),
              const Dr_page(),
              Appoint_Screen(),
              const Payment(),
            ],
          ),
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
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.black54),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.business_center_outlined,
              color: Colors.grey,
            ),
            title: const Text(
              'Doctors',
              style: TextStyle(color: Colors.black54),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
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
            icon: const Icon(
              Icons.grid_view_outlined,
              color: Colors.grey,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(color: Colors.black54),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
