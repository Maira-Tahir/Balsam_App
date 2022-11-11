import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/ButtonWidget.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/CommonWidgets/TextFieldWidget.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

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
          "Add New Card",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Add Credit Card',
                style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 23),
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
                hintText: "Enter Card Holder Full Name",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 0, color: Colors.black), //<-- SEE HERE
                ),
              ),
            ),
            HorizontalSizeBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Credit Card Number',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter Card Holder Full Name",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 0, color: Colors.black), //<-- SEE HERE
                ),
              ),
            ),
            HorizontalSizeBox(height: 20),
            Row(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter Expires Date',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 55),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CVV:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "MM/YY",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0, color: Colors.black), //<-- SEE HERE
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter CVV Number",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0, color: Colors.black), //<-- SEE HERE
                      ),
                    ),
                  ),
                ),
              ],
            ),
            HorizontalSizeBox(
              height: 25,
            ),
            ButtonWidget(
                onPressed: () async {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => DoctorsScreen()));
                },
                color: blueColor,
                text: 'ADD CARD'),
          ],
        ),
      ),
    );
  }
}
