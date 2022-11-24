import 'package:balsam/AppUtils/utils.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/HomePage/menu_button.dart';
import 'package:balsam/profile/Help_Centre.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class trackorder extends StatefulWidget {
  @override
  State<trackorder> createState() => _trackorderState();
}

class _trackorderState extends State<trackorder> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
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
                child: const Icon(
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
                  MaterialPageRoute(builder: (context) => const Dr_page()),
                ),
                child: const Icon(
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
                child: const Icon(
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
                child: const Icon(
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HorizontalSizeBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const menubutton()),
                          ),
                      child: const Icon(Icons.menu)),
                ),
                HorizontalSizeBox(height: 20),
                ListTile(
                  leading: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          ),
                      child: const Icon(Icons.arrow_back, color: Colors.black)),
                  title: const Text('Track Order',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  trailing:
                      const Icon(Icons.shopping_cart, color: Colors.black),
                ),
                SizedBox(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                        title: BoldText("#7047983"),
                        trailing: const Text('Details'),
                        collapsedTextColor: Colors.black,
                        textColor: Colors.black,
                        childrenPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.all(6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BoldText("Wooden Coffee Table"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 15,
                                        ),
                                        grayText("   (426 reviews)"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    redText("\$274.00"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text(
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
                                          color: Colors.red.shade900,
                                          width: 2)),
                                ),
                              ],
                            ),
                          ),
                          ExpansionTile(
                            title: BoldText('Info Details'),
                            trailing: const Text('Show'),
                            textColor: Colors.black,
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  grayText2('Number: '),
                                  const Text("701798544"),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  grayText2('Date: '),
                                  const Text("22 Oct 2021 at 10:39"),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  grayText2('Status: '),
                                  const Text("Complete"),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  grayText2('Delivery: '),
                                  const Text("25 Oct 2021"),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  grayText2('Amount: '),
                                  redText("\$274.00"),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpCentre()),
                  ),
                  child: Container(
                    height: 90,
                    width: 280,
                    color: const Color(0xffEFEAE4),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BoldText('Have a problem?'),
                            const Text('tufg weituu etiuei'),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.black,
                          )),
                          child: const Center(child: Text('Get Help')),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
