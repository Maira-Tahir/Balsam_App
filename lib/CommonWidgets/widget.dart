import 'package:balsam/AppUtils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class CustomContainerTwo extends StatelessWidget {
  CustomContainerTwo({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
          ),
          Icon(
            Icons.keyboard_arrow_down_sharp,
          )
        ],
      ),
    );
  }
}

class reviews extends StatelessWidget {
  reviews(
      {Key? key,
      required this.thumb,
      required this.reviewType,
      required this.review,
      required this.percent,
      required this.arrow})
      : super(key: key);
  final IconData thumb, arrow;
  final String reviewType, review, percent;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(thumb),
            SizedBox(
              width: 8,
            ),
            Text(reviewType,
                style: TextStyle(color: Colors.black, fontSize: 15)),
          ],
        ),
        Text(review, style: TextStyle(color: Colors.black, fontSize: 45)),
        Row(
          children: [
            Icon(
              arrow,
              size: 17,
              color: Colors.green.shade900,
            ),
            RichText(
              text: TextSpan(
                  text: percent,
                  style: TextStyle(color: Colors.green.shade900),
                  children: [
                    TextSpan(
                        text: "From Last 7 Days",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12))
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}

class cartItem extends StatelessWidget {
  const cartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 20,
                  )),
              Text(
                '2',
                style: TextStyle(fontSize: 18),
              ),
              Center(
                child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_circle_outline,
                      size: 20,
                    )),
              ),
            ],
          ),
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.red.shade900, width: 2)),
          ),
        ],
      ),
    );
  }
}
