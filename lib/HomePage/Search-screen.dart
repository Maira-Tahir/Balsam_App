import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/Doctor/doctorspage.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/HomePage/category.dart';
import 'package:balsam/HomePage/menu_button.dart';
import 'package:balsam/HomePage/search.dart';
import 'package:balsam/profile/Myappointment.dart';
import 'package:balsam/profile/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => menubutton()),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
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
                    offset: const Offset(0, 0), // changes position of shadow
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
                    child: const Icon(Icons.close),
                  ),
                  VerticalSizeBox(width: 10),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Category()),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, elevation: 0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              'Category',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 80,
                                              decoration: const BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 4,
                                                    offset: Offset(4,
                                                        8), // Shadow position
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                              child: const Center(
                                                child: Text('Derma',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Container(
                                              height: 40,
                                              width: 80,
                                              decoration: const BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 4,
                                                    offset: Offset(4,
                                                        8), // Shadow position
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                              child: const Center(
                                                child: Text('Dental',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Container(
                                              height: 40,
                                              width: 100,
                                              decoration: const BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 4,
                                                    offset: Offset(4,
                                                        8), // Shadow position
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                              child: const Center(
                                                child: Text('Facial Care',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 80,
                                              decoration: const BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 4,
                                                    offset: Offset(4,
                                                        8), // Shadow position
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                              child: const Center(
                                                child: Text('Derma',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Container(
                                              height: 40,
                                              width: 80,
                                              decoration: const BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 4,
                                                    offset: Offset(4,
                                                        8), // Shadow position
                                                  ),
                                                ],
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                              child: const Center(
                                                child: Text('Dental',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Container(
                                              height: 40,
                                              width: 100,
                                              decoration: const BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 4,
                                                    offset: Offset(4,
                                                        8), // Shadow position
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                              child: const Center(
                                                child: Text('Facial Care',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 10),
                                        Row(
                                          children: const [
                                            Text(
                                              'Price',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 3),
                                        PriceBar(),
                                        HorizontalSizeBox(height: 5),
                                        Row(
                                          children: const [
                                            Text(
                                              'Star Rating',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 5),
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        HorizontalSizeBox(height: 5),
                                        Row(
                                          children: const [
                                            Text(
                                              'Type',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 5),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: const BoxDecoration(
                                                    color: Colors.blue),
                                                child: const Icon(Icons.check,
                                                    color: Colors.white,
                                                    size: 12),
                                              ),
                                            ),
                                            const Text(
                                              'Services',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                              ),
                                            ),
                                            const Text(
                                              'Packages',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                              ),
                                            ),
                                            const Text(
                                              'Others',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 5),
                                        Row(
                                          children: const [
                                            Text(
                                              'Classification',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 5),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                              ),
                                            ),
                                            const Text(
                                              'Services',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: const BoxDecoration(
                                                    color: Colors.blue),
                                                child: const Icon(Icons.check,
                                                    color: Colors.white,
                                                    size: 12),
                                              ),
                                            ),
                                            const Text(
                                              'Packages',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            VerticalSizeBox(width: 20),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                              ),
                                            ),
                                            const Text(
                                              'Others',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        HorizontalSizeBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.blue)),
                                              child: const Center(
                                                child: Text('Reset',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 22)),
                                              ),
                                            ),
                                            VerticalSizeBox(width: 10),
                                            Container(
                                              height: 40,
                                              width: 150,
                                              decoration: const BoxDecoration(
                                                color: Colors.blue,
                                              ),
                                              child: Center(
                                                child: InkWell(
                                                  onTap: () => Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Search()),
                                                  ),
                                                  child: Text('Apply',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
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
                        const Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
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
                        const Text(
                          "RECOMMANDED",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
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
                        const Text(
                          "POPULAR",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
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
                        const Text(
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
                const Text(
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
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: const ListTile(
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
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: const ListTile(
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
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: const ListTile(
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
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black45),
              )),
              child: const ListTile(
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
              child: const ListTile(
                title: Text('Royal Hotel',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 18)),
                trailing: Icon(Icons.highlight_off_sharp, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceBar extends StatefulWidget {
  @override
  State<PriceBar> createState() => _PriceBarState();
}

class _PriceBarState extends State<PriceBar> {
  RangeValues _currentRangeValues = const RangeValues(0, 40);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      max: 100,
      divisions: 5,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
