// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Doctor_Profile_Tile extends StatelessWidget {
  Doctor_Profile_Tile(this.specialization, this.Doc_Name,
      this.Year_of_experiences, this.rating_text,
      {Key? key})
      : super(key: key);

  String specialization;
  String Doc_Name;
  String Year_of_experiences;
  String rating_text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Stack(children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xFFE9F4F9),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 120, bottom: 10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // const SizedBox(
                    //   height: 12,
                    // ),
                    Text(
                      specialization,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: (Colors.red)),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      Doc_Name,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    Expanded(
                      child: Text(
                        Year_of_experiences,
                        style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 12,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text('($rating_text)')
                    ]),
                  ],
                  //   Text(''),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF4EEE6),
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 100,
              width: MediaQuery.of(context).size.width * 0.25,
            ),
          ),
        ]),
      ),
    );
  }
}
