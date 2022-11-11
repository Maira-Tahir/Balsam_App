import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/profile/FAQS.dart';
import 'package:balsam/profile/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            HorizontalSizeBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.arrow_left, color: Colors.black),
              title: Text('Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black)),
              trailing: InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => editprofile()),
                      ),
                  child: Icon(Icons.edit_outlined, color: Colors.black)),
            ),
            HorizontalSizeBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFE9F4F9),
              ),
              height: 100,
              width: 400,
              child: const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                ),
                title: Text('Hi, Kevin L.Lablance'),
                subtitle: Text('kevin.m.lable845@gmail.com'),
              ),
            ),
            HorizontalSizeBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFFE9F4F9),
                  ),
                  height: 60,
                  width: 270,
                  child: const ListTile(
                    title: Text("Favouriate Doctors",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(width: 30),
                SwitchScreen(),
              ],
            ),
            HorizontalSizeBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFE9F4F9),
              ),
              height: 60,
              width: 400,
              child: const ListTile(
                title: Text('My Appointment',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
              ),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFE9F4F9),
              ),
              height: 60,
              width: 400,
              child: const ListTile(
                title: Text("Favouriate Doctors",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
              ),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFE9F4F9),
              ),
              height: 60,
              width: 400,
              child: const ListTile(
                title: Text('Invite a friend',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
              ),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFE9F4F9),
              ),
              height: 60,
              width: 400,
              child: ListTile(
                title: const Text('Language',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    const Text(
                      'English',
                      style: TextStyle(color: Colors.red),
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black), // icon-2
                  ],
                ),
              ),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xFFE9F4F9),
                ),
                height: 60,
                width: 400,
                child: ListTile(
                  title: Text('FAQS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black)),
                  trailing: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FAQS(),
                        )),
                    child: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ),
                )),
            HorizontalSizeBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFE9F4F9),
              ),
              height: 60,
              width: 400,
              child: const ListTile(
                title: Text('Help Center',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
              ),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFE9F4F9),
              ),
              height: 60,
              width: 400,
              child: const ListTile(
                title: Text('Logout',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 2,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.blue,
            activeTrackColor: const Color(0xFFE9F4F9),
            inactiveThumbColor: Colors.blue,
            inactiveTrackColor: const Color(0xFFE9F4F9),
          )),
    ]);
  }
}
