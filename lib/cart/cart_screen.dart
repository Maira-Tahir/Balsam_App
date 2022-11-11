import 'package:balsam/AppUtils/utils.dart';
import 'package:balsam/CommonWidgets/widget.dart';
import 'package:balsam/cart/track_order.dart';
import 'package:flutter/material.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({Key? key}) : super(key: key);

  @override
  State<cartscreen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
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
                    builder: (context) => track_order(),
                  ));
                },
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
