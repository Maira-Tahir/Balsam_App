import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemHeight = 300;
    final itemWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Category', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
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
                            child: Text(
                              'Get Now',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    HorizontalSizeBox(height: 30),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Expanded(
                      child: const Text(
                        'DISCOVER OUR SERVICE',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 50),
                    child: Expanded(
                      child: const Text(
                        'RANGE',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, top: 20),
                    child: Expanded(
                      child: const Text(
                        'give time to your body soul.',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
              HorizontalSizeBox(height: 20),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 6.0,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: lightBlueColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://media.istockphoto.com/id/1177145926/vector/anatomical-heart-isolated-heart-diagnostic-center-sign-human-heart-cartoon-design-vector.jpg?s=612x612&w=0&k=20&c=h0SLB4VeWHfvyzRmnT1EJe4VyzGArBEzYdsWcag8IHg=',
                                  width: 60,
                                  height: 50,
                                ),
                              ],
                            ),
                            Column(
                              children: [Text('heart')],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
