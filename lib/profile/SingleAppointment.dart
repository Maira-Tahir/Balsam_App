import 'dart:async';
import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/components/button.dart';
import 'package:balsam/components/docproFileTile.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SingleApponitment extends StatefulWidget {
  const SingleApponitment({Key? key}) : super(key: key);

  @override
  State<SingleApponitment> createState() => _SingleApponitmentState();
}

class _SingleApponitmentState extends State<SingleApponitment> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:
            Text('Single Appointment', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Doctor_Profile_Tile('HEART SURGEON', 'Dr. Harry P. Johnson ',
                '9 Year Experience', "348"),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, color: Colors.yellow, size: 30),
                    Text("Date:   Wed,24 Dec"),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Icon(Icons.timer, color: Colors.black26, size: 30),
                    Text("Time:                      Morning 10:00AM-11:00AM"),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Icon(Icons.attach_money, color: Colors.black, size: 30),
                    Text(
                        "Total Cost:                                                 \$33.00"),
                  ],
                )),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'How Was Your Experience With',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: ' DR.Jaime M.Mercado!',
                          style: TextStyle(
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Location ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE9F4F9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text('CHANGE',
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
                VerticalSizeBox(width: 10),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text('CANCEL',
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
