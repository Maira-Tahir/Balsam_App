import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/ButtonWidget.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final itemHeight = 300;
    final itemWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text('Categories', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const ListTile(
              title: Text('What do you want to consult?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              subtitle: Text('You Can Choose more than one',
                  style: TextStyle(color: Colors.black)),
            ),
            HorizontalSizeBox(height: 20),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: lightBlueColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://cdn-icons-png.flaticon.com/128/508/508786.png',
                                width: 60,
                                height: 50,
                              ),
                            ],
                          ),
                          Column(
                            children: [Text('heart')],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            HorizontalSizeBox(
              height: 25,
            ),
            ButtonWidget(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dr_page()));
                },
                color: blueColor,
                text: 'CONTINUE'),
          ],
        ),
      ),
    );
  }
}
