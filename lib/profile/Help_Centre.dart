import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';

class HelpCentre extends StatelessWidget {
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
            const ListTile(
              leading: Icon(CupertinoIcons.arrow_left, color: Colors.black),
              title: Text("HELP CENTER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black)),
            ),
            HorizontalSizeBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 180,
                  width: 390,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, top: 25, right: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Have a Query related to your appointment or your process concern?'
                              'Have a Query related to your appointment or your process concern?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/925/925023.png',
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                HorizontalSizeBox(height: 30),
                Row(
                  children: [Text('Other Topics:')],
                ),
                HorizontalSizeBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: lightBlueColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 80,
                  width: 400,
                  child: ListTile(
                    title: Text('New Doctor Appointment Help',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    subtitle:
                        Text('Bus Availibality / Child Fare / Luggage Policy'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ),
                ),
                HorizontalSizeBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: lightBlueColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 80,
                  width: 400,
                  child: ListTile(
                    title: Text('Technical Issues',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    subtitle: Text('Need some Technical help Issues'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ),
                ),
                HorizontalSizeBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: lightBlueColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 80,
                  width: 400,
                  child: ListTile(
                    title: Text('Doqtec Reterral Help',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    subtitle: Text('Need help with Doqtec Reterral Help'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ),
                ),
                HorizontalSizeBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: lightBlueColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 80,
                  width: 400,
                  child: ListTile(
                    title: Text('Others?',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    subtitle: Text('Need help with Others?'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ),
                ),
                HorizontalSizeBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: lightBlueColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 80,
                  width: 400,
                  child: ListTile(
                    title: Text('Doqtec Wallet Help?',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    subtitle: Text('Need any help with Doqtec Wallet'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
