import 'package:balsam/AppUtils/utils.dart';
import 'package:balsam/CommonWidgets/widget.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/Doctor/writereview.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("REVIEWS"),
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                        text: "Your Review Performance is ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Good",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17))
                        ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomContainer(
                      text: 'LATEST',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomContainerTwo(text: 'ALL RATING'),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomContainerTwo(text: '5 STAR'),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    reviews(
                        thumb: Icons.thumb_up_alt_outlined,
                        reviewType: "Positive Reviews",
                        review: "348",
                        percent: "14% ",
                        arrow: Icons.arrow_upward),
                    Container(
                      height: 120,
                      child: VerticalDivider(
                          color: Colors.black.withOpacity(0.4), thickness: 2),
                    ),
                    reviews(
                        thumb: Icons.thumb_down_alt_outlined,
                        reviewType: "Negative Reviews",
                        review: "67",
                        percent: "3% ",
                        arrow: Icons.arrow_downward)
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 17,
                              ),
                              const Text('4.8')
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red.shade900,
                                radius: 25,
                                child: const CircleAvatar(
                                  radius: 23,
                                  backgroundColor: Color(0xffF5EEE6),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BoldText("Alicia J. Aldridge"),
                                  const Text("03 Days Ago")
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                              "durumkjgr ftiru jteiwodj eriueofrfjcsk fekjruie griifos")
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => writeriew()));
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
