import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/ButtonWidget.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class writeriew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                children: const [
                  Icon(CupertinoIcons.arrow_left),
                  Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Write A Review",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Column(children: [
              SizedBox(
                height: 200,
                width: 450,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 60,
                          child: CircleAvatar(
                            radius: 56,
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'How Was Your Experience With',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: ' DR.Jaime M.Mercado!',
                          style: TextStyle(
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
              ),
              HorizontalSizeBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
            ]),
            HorizontalSizeBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Write a Comment',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: lightBlueColor,
              height: 180,
              width: 400,
            ),
            HorizontalSizeBox(height: 20),
            Center(
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'What do you recommanded',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                      text: ' DR.Jaime M.Mercado!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                        text: 'to your Friends?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
            HorizontalSizeBox(height: 30),
            Row(
              children: [
                Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 19),
                Text(
                  "No",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
                text: 'SAVE'),
          ],
        ),
      ),
    );
  }
}
