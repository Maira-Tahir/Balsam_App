import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';

class notify extends StatelessWidget {
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
              title: Text("Notification",
                  style: TextStyle(fontSize: 22, color: Colors.black)),
            ),
            Row(
              children: [Text('Today 24dec')],
            ),
            HorizontalSizeBox(height: 10),
            Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: lightBlueColor)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 7.0, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '10:00AM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(Icons.access_time,
                                color: Colors.white, size: 30),
                          ),
                        ),
                        title: Text('Remainder for alarm'),
                        subtitle: Text(
                            'your remainder appointment will be notification send'),
                      ),
                    ),
                  ],
                )),
            HorizontalSizeBox(height: 10),
            Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: lightBlueColor)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 7.0, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '04:03AM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(Icons.check_circle_outlined,
                                color: Colors.white, size: 30),
                          ),
                        ),
                        title: Text('Remainder for alarm'),
                        subtitle: Text(
                            'your remainder appointment will be notification send'),
                      ),
                    ),
                  ],
                )),
            HorizontalSizeBox(height: 10),
            Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: lightBlueColor)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 7.0, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '09:40AM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(Icons.check_circle_outlined,
                                color: Colors.white, size: 30),
                          ),
                        ),
                        title: Text('Remainder for alarm'),
                        subtitle: Text(
                            'your remainder appointment will be notification send'),
                      ),
                    ),
                  ],
                )),
            HorizontalSizeBox(height: 10),
            Row(
              children: [Text('Today 24dec')],
            ),
            HorizontalSizeBox(height: 10),
            Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: lightBlueColor)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 7.0, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '10:00AM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(Icons.access_time,
                                color: Colors.white, size: 30),
                          ),
                        ),
                        title: Text('Remainder for alarm'),
                        subtitle: Text(
                            'your remainder appointment will be notification send'),
                      ),
                    ),
                  ],
                )),
            HorizontalSizeBox(height: 10),
            Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: lightBlueColor)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 7.0, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '04:03AM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(Icons.check_circle_outlined,
                                color: Colors.white, size: 30),
                          ),
                        ),
                        title: Text('Remainder for alarm'),
                        subtitle: Text(
                            'your remainder appointment will be notification send'),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
