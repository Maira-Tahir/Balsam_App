import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/CommonWidgets/widget.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/HomePage/search.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Search', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        actions: const [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  VerticalSizeBox(width: 20),
                  const Icon(
                    Icons.search,
                  ),
                  VerticalSizeBox(width: 10),
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Facial cleaning'),
                  )),
                  VerticalSizeBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.4)),
                    child: Icon(Icons.close),
                  ),
                  VerticalSizeBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            HorizontalSizeBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "RECOMMANDED",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "POPULAR",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "POPULAR",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            HorizontalSizeBox(height: 20),
            Row(
              children: [
                Text(
                  'Recent',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            HorizontalSizeBox(height: 10),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: ListTile(
                title: Text('Hair Removal',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18)),
                trailing: Icon(Icons.highlight_off_sharp, color: Colors.black),
              ),
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: ListTile(
                title: Text('Upper Body',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18)),
                trailing: Icon(Icons.highlight_off_sharp, color: Colors.black),
              ),
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: ListTile(
                title: Text('Filter',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18)),
                trailing: Icon(Icons.highlight_off_sharp, color: Colors.black),
              ),
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: ListTile(
                title: Text('Bright Smile',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18)),
                trailing: Icon(Icons.highlight_off_sharp, color: Colors.black),
              ),
            ),
            Container(
              height: 50,
              width: 400,
              child: ListTile(
                title: Text('Royal Hotel',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18)),
                trailing: Icon(Icons.highlight_off_sharp, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
