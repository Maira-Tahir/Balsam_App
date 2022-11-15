import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/AppUtils/utils.dart';
import 'package:balsam/CommonWidgets/widget.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/Doctor/paymentsuccess.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/cart/track_order.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({Key? key}) : super(key: key);

  @override
  State<cartscreen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cartscreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text('Cart', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        actions: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => cartscreen()),
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
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
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText("Doctor Fees:"),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(4),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.red.shade900, width: 2)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        redText("CARDIOLOGY"),
                        SizedBox(
                          height: 5,
                        ),
                        BoldText("Dr. Jaime M. Mercado"),
                        grayText("5+ Years Experience"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 17,
                            ),
                            Text(" (426)"),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Text(
                                  "Edite",
                                  style: TextStyle(color: Colors.red.shade900),
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              BoldText("Others"),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Dismissible(
                        background: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.grey.withOpacity(0.1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Icon(Icons.delete), Text("Delete")],
                          ),
                        ),
                        key: ValueKey(index),
                        // onDismissed: (direction) {
                        //   setState(() {
                        //
                        //   });
                        // },
                        child: cartItem());
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('Select item: '),
                        BoldText("3"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('Subtotal: '),
                        BoldText("\$589.00"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('discount (%20): '),
                        BoldText("\$117.80"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // DottedLine(
                    //   dashColor: Colors.grey,
                    //   direction: Axis.horizontal,
                    //   dashLength: 4,
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        grayText2('Total: '),
                        redText("\$471.20"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => trackorder(),
                  ));
                },
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentSuccess()),
                  ),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "CHECK OUT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
