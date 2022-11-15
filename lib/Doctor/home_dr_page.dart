import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/text_filed.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/Doctor/lists_doctors.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import '../components/button.dart';
import 'package:flutter/material.dart';

class HomePage_APP extends StatefulWidget {
  const HomePage_APP({Key? key}) : super(key: key);

  @override
  State<HomePage_APP> createState() => _HomePage_APPState();
}

class _HomePage_APPState extends State<HomePage_APP> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
            child: Icon(Icons.arrow_back, color: Colors.black)),
        elevation: 0.0,
        title: Text('Search Doctors',
            style: TextStyle(color: Colors.black, fontSize: 24)),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Image.network('https://iili.io/pWXI5X.png'),
              Text_Felid('Select Area', const Icon(Icons.location_on_outlined)),
              const SizedBox(
                height: 15,
              ),
              Text_Felid('Specialties Doctor',
                  const Icon(Icons.business_center_outlined)),
              const SizedBox(
                height: 15,
              ),
              Text_Felid(
                  'Date & Time', const Icon(Icons.calendar_month_outlined)),
              const SizedBox(
                height: 15,
              ),
              button('SEARCH', Colors.blue, Colors.white),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Doctors',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dr_page()),
                    ),
                    child: Text(
                      'See ALL',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
              Doctor_Lists('Dr. Harry P. Johnson', 'Heart Surgeon', '178'),
              Doctor_Lists('Dr. Shirley D. Howard', '', '178'),
            ],
          ),
        ),
      ),
    );
  }
}
