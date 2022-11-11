import 'package:flutter/material.dart';
import 'package:balsam/components/button.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../components/docproFileTile.dart';
import 'dart:async';

import 'bookappointment.dart';

class Appoint_Screen extends StatefulWidget {
  Appoint_Screen({Key? key}) : super(key: key);

  @override
  State<Appoint_Screen> createState() => _Appoint_ScreenState();
}

class _Appoint_ScreenState extends State<Appoint_Screen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

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
        actions: const <Widget>[
          Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 28,
          ),
          Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 28,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Doctor_Profile_Tile('HEART SURGEON', 'Dr. Harry P. Johnson ',
                '9 Year Experience', "348"),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Book_appoint()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (Colors.blue),
                  ),
                  child: const Icon(
                    Icons.email_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Biography',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: RichText(
                text: TextSpan(
                  text:
                      'Although the basic version of BottomNavigationBar is working well, we have one \n\nproblem: whatever action — e.g., searching, filtering, entering text, scrolling through a list, filling out a contact form, etc. — is being performed on the page will be lost upon selecting another item from the BottomNavigationBar:',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Working Time',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Text(
                '\nMon - Sat (09:30AM - 09:00PM)',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Location ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE9F4F9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            button('BOOK APPOINTMENT', Colors.blue, Colors.white)
          ],
        ),
      ),
    );
  }
}
