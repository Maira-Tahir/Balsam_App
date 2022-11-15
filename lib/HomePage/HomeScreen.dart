import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/Doctor/appointmentScreen.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/Doctor/home_dr_page.dart';
import 'package:balsam/HomePage/Categories.dart';
import 'package:balsam/HomePage/Search-screen.dart';
import 'package:balsam/HomePage/category.dart';
import 'package:balsam/HomePage/menu_button.dart';
import 'package:balsam/Product/Product_Detail.dart';
import 'package:balsam/Product/SkinCare.dart';
import 'package:balsam/Product/latestOffers.dart';
import 'package:balsam/Product/poplular_services.dart';
import 'package:balsam/Product/recommand_for_you.dart';
import 'package:balsam/Screens/LoginScreen.dart';
import 'package:balsam/cart/cart_screen.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/SingleAppointment.dart';
import 'package:balsam/profile/notifications.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    final itemHeight = 300;
    final itemWidth = MediaQuery.of(context).size.width * 0.5;
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => menubutton()),
                          ),
                      child: Icon(Icons.menu)),
                ),
                HorizontalSizeBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.red, width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                    ),
                    VerticalSizeBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi, Kevin L. Lablanc',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'How is Your Health?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => notify()),
                            ),
                        child: Icon(Icons.notifications)),
                    VerticalSizeBox(width: 5),
                    InkWell(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cartscreen()),
                            ),
                        child: Icon(Icons.shopping_cart)),
                    VerticalSizeBox(width: 5),
                    InkWell(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            ),
                        child: Icon(Icons.tv_outlined)),
                  ],
                ),
                HorizontalSizeBox(height: 10),
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
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchScreen()),
                        ),
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                      VerticalSizeBox(width: 10),
                      Expanded(
                          child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Facial cleaning'),
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
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchScreen()),
                        ),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
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
                HorizontalSizeBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Find Your Desired',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    VerticalSizeBox(width: 10),
                    const Text(
                      'Doctor Right Now!',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      VerticalSizeBox(width: 20),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width - 200,
                        child: Column(
                          children: [
                            Text(
                              '30% discount on all home decoration product',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            HorizontalSizeBox(height: 30),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => latestoffer()),
                                ),
                                child: Text(
                                  'Get Now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                HorizontalSizeBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Upcoming Schedule',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Categories()),
                      ),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SingleApponitment()),
                  ),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 20),
                          width: MediaQuery.of(context).size.width - 210,
                          child: Column(
                            children: [
                              Text(
                                'Ronnie C. Torres',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              HorizontalSizeBox(height: 10),
                              Text(
                                'Dermatologist, London',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              HorizontalSizeBox(height: 30),
                              Text(
                                'Dec 02, 09:00AM',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            //borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 200,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.withAlpha(50),
                                //borderRadius: BorderRadius.circular(20),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                HorizontalSizeBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Main Category',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Category()),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Category()),
                        ),
                        child: Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent),
                        ),
                      ),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dr_page()),
                  ),
                  child: Container(
                    height: 120,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width:
                                (MediaQuery.of(context).size.width - 40) * 0.31,
                            margin: EdgeInsets.only(
                                right: (index == 0 || index == 1 || index == 2)
                                    ? 10
                                    : 0),
                            decoration: BoxDecoration(
                              color: Colors.blue.withAlpha(15),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cardiology',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                HorizontalSizeBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Top Doctors',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dr_page()),
                      ),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Appoint_Screen()),
                        ),
                        child: Container(
                          height: 140,
                          padding: const EdgeInsets.only(top: 10),
                          //margin: EdgeInsets.only(bottom: (index == 0 || index == 1 || index == 2) ? 10 : 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withAlpha(50),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              VerticalSizeBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HorizontalSizeBox(height: 20),
                                  Text(
                                    'Dr. Leslie R. Bean',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  HorizontalSizeBox(height: 5),
                                  Text(
                                    'Heart Surgon',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  HorizontalSizeBox(height: 10),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 25,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      VerticalSizeBox(width: 10),
                                      Text(
                                        '(348)',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                HorizontalSizeBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Services Category',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Category()),
                      ),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SkinCare()),
                  ),
                  child: Container(
                    height: 120,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width:
                                (MediaQuery.of(context).size.width - 40) * 0.31,
                            margin: EdgeInsets.only(
                                right: (index == 0 || index == 1 || index == 2)
                                    ? 10
                                    : 0),
                            decoration: BoxDecoration(
                              color: Colors.blue.withAlpha(15),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Laser',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                HorizontalSizeBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Popular Package',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PopularService()),
                      ),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: itemWidth / itemHeight,
                      crossAxisCount: 2,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail()),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                ),
                              ),
                              HorizontalSizeBox(height: 5),
                              Container(
                                width: itemWidth,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withAlpha(50),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              HorizontalSizeBox(height: 10),
                              Text(
                                'Headphone Holder',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    '(348 reviews)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              //HorizontalSizeBox(height: 5),
                              Text(
                                '\$35.90',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                HorizontalSizeBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Lastest Offers',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Recommanded()),
                      ),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail()),
                        ),
                        child: Container(
                          height: 120,
                          padding: const EdgeInsets.all(0),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withAlpha(50),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HorizontalSizeBox(height: 30),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Headphone Holder',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      VerticalSizeBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              380),
                                      Text(
                                        '(348)',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      VerticalSizeBox(width: 10),
                                    ],
                                  ),
                                  HorizontalSizeBox(height: 10),
                                  Text(
                                    '\$35.90',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                HorizontalSizeBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Lastest Packages',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.redAccent),
                    ),
                  ],
                ),
                HorizontalSizeBox(height: 10),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail()),
                        ),
                        child: Container(
                          height: 120,
                          padding: const EdgeInsets.all(0),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withAlpha(50),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HorizontalSizeBox(height: 30),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Headphone Holder',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      VerticalSizeBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              380),
                                      Text(
                                        '(348)',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      VerticalSizeBox(width: 10),
                                    ],
                                  ),
                                  HorizontalSizeBox(height: 10),
                                  Text(
                                    '\$35.90',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
