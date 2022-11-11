import 'package:balsam/CommonWidgets/text_filed.dart';
import 'package:balsam/Doctor/lists_doctors.dart';
import '../components/button.dart';
import 'package:flutter/material.dart';

class HomePage_APP extends StatelessWidget {
  const HomePage_APP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Image.network('https://iili.io/pWXI5X.png'),
          Text_Felid('Select Area', const Icon(Icons.location_on_outlined)),
          const SizedBox(
            height: 15,
          ),
          Text_Felid(
              'Specialties Doctor', const Icon(Icons.business_center_outlined)),
          const SizedBox(
            height: 15,
          ),
          Text_Felid('Date & Time', const Icon(Icons.calendar_month_outlined)),
          const SizedBox(
            height: 15,
          ),
          button('SEARCH', Colors.blue, Colors.white),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Top Doctors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                'See ALL',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
              ),
            ],
          ),
          Doctor_Lists('Dr. Harry P. Johnson', 'Heart Surgeon', '178'),
          Doctor_Lists('Dr. Shirley D. Howard', '', '178'),
        ],
      ),
    );
  }
}
