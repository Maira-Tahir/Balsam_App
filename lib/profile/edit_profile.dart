import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/ButtonWidget.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/profile/profile_screen.dart';

import 'package:flutter/material.dart';

class editprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "EDIT PROFILE",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                ),
              ),
              HorizontalSizeBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Full Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0, color: Colors.black), //<-- SEE HERE
                  ),
                ),
              ),
              HorizontalSizeBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Id*',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email ID",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0, color: Colors.black), //<-- SEE HERE
                  ),
                ),
              ),
              HorizontalSizeBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number*',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Phone Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0, color: Colors.black), //<-- SEE HERE
                  ),
                ),
              ),
              HorizontalSizeBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Location*',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Location",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0, color: Colors.black), //<-- SEE HERE
                  ),
                ),
              ),
              HorizontalSizeBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender*',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Male",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0, color: Colors.black), //<-- SEE HERE
                  ),
                ),
              ),
              HorizontalSizeBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Date of Birth*',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "DD/MM/YY",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0, color: Colors.black), //<-- SEE HERE
                  ),
                ),
              ),
              HorizontalSizeBox(
                height: 25,
              ),
              ButtonWidget(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  color: blueColor,
                  text: 'SAVE CHANGES'),
            ],
          ),
        ),
      ),
    );
  }
}
