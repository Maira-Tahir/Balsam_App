// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Doctor_Lists extends StatelessWidget {
  Doctor_Lists(this.Doc_Name, this.specialization, this.rating_text, {Key? key})
      : super(key: key);
  String Doc_Name;
  String specialization;
  String rating_text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffF4EEE6),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 100,
              width: 100,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Doc_Name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  specialization,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: (Colors.blue.shade400)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
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
            )
          ],
        ),
      ),
    );
  }
}
