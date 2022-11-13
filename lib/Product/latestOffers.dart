import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/HorizontalSizeBox.dart';
import 'package:flutter/material.dart';

class ProductService extends StatelessWidget {
  ProductService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemHeight = 300;
    final itemWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
        backgroundColor: lightBlueColor,
        appBar: AppBar(
          backgroundColor: lightBlueColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Latest Offers',
              style: TextStyle(color: Colors.black)),
          elevation: 0.0,
          actions: const [
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
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
                );
              }),
        )));
  }
}
