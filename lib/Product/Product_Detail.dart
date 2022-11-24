import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/ButtonWidget.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/cart/cart_screen.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemHeight = 300;
    final itemWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      backgroundColor: lightBlueColor,
      appBar: AppBar(
        backgroundColor: lightBlueColor,
        leading: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text('Product Details',
            style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://cdn-icons-png.flaticon.com/128/4527/4527886.png",
                      )
                    ],
                  ),
                )
              ],
            ),
            HorizontalSizeBox(height: 20),
            Container(
              child: ListTile(
                title: Text('Smart Watch',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    )),
                subtitle: Text('Unisex'),
                trailing: Text('\$365.00',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                  ],
                ),
              ),
            ),
            HorizontalSizeBox(height: 20),
            Container(
              child: Row(
                children: [
                  Text(
                    'Product',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Text(
                    'Content',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Text(
                    'Reviews',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            HorizontalSizeBox(height: 10),
            Row(
              children: const [
                Expanded(
                    child: Text(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.'))
              ],
            ),
            HorizontalSizeBox(height: 10),
            Row(
              children: const [
                Expanded(
                    child: Text(
                        'content. Lorem ipsum may be used as a placeholder before final copy is available.'))
              ],
            ),
            HorizontalSizeBox(height: 30),
            Divider(
              height: 2,
              thickness: 2,
            ),
            HorizontalSizeBox(height: 20),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 40,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 3.0),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                VerticalSizeBox(width: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: ButtonWidget(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cartscreen()));
                      },
                      color: blueColor,
                      text: 'Add to Cart'),
                ),
              ],
            ),
            VerticalSizeBox(width: 10),
            ListTile(
              title: Text('You Viewed',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.favorite_border, color: Colors.black),
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: itemWidth / itemHeight,
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
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
                          offset: Offset(0, 0), // changes position of shadow
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
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()),
                          ),
                          child: Container(
                            width: itemWidth,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.grey.withAlpha(50),
                              borderRadius: BorderRadius.circular(10),
                            ),
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
                          children: const [
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
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
