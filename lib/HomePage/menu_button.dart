import 'dart:developer';

import 'package:balsam/Doctor/doctors_screen.dart';
import 'package:balsam/HomePage/Categories.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/HomePage/category.dart';
import 'package:balsam/HomePage/search.dart';
import 'package:balsam/Product/latestOffers.dart';
import 'package:balsam/cart/track_order.dart';
import 'package:balsam/profile/notifications.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menubutton extends StatelessWidget {
  const menubutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 150),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 0, right: 300),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 12,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Categories()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Catagories',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Category()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Services',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => latestoffer()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Others',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorsScreen()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Doctors',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notify()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Notifications',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => trackorder()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Orders',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Quit',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
