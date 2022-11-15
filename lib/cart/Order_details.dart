import 'package:balsam/AppUtils/utils.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/HomePage/menu_button.dart';
import 'package:balsam/cart/cart_screen.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 0.0,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              HorizontalSizeBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => menubutton()),
                        ),
                    child: Icon(Icons.menu)),
              ),
              HorizontalSizeBox(height: 20),
              ListTile(
                leading: InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        ),
                    child: Icon(Icons.arrow_back, color: Colors.black)),
                title: Text('Order Details',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                trailing: InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => cartscreen()),
                        ),
                    child: Icon(Icons.shopping_cart, color: Colors.black)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      title: BoldText("#7047983"),
                      trailing: Text('Details'),
                      collapsedTextColor: Colors.black,
                      textColor: Colors.black,
                      childrenPadding: EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.all(6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BoldText("Wooden Coffee Table"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      grayText("   (426 reviews)"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  redText("\$274.00"),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '2',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.red.shade900, width: 2)),
                              ),
                            ],
                          ),
                        ),
                        ExpansionTile(
                          title: BoldText('Info Details'),
                          trailing: Text('Show'),
                          textColor: Colors.black,
                          childrenPadding: EdgeInsets.symmetric(horizontal: 25),
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                grayText2('Number: '),
                                Text("701798544"),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                grayText2('Date: '),
                                Text("22 Oct 2021 at 10:39"),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                grayText2('Status: '),
                                Text("Complete"),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                grayText2('Delivery: '),
                                Text("25 Oct 2021"),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                grayText2('Amount: '),
                                redText("\$274.00"),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
