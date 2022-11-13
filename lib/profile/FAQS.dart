import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/profile/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';

class FAQS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            HorizontalSizeBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.arrow_left, color: Colors.black),
              title: Text('FAQS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black)),
            ),
            HorizontalSizeBox(
              height: 20,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 160,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    child: Text(
                                        'Q1:Can I Find The Right Direction Faster?',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        )),
                                    child: const Icon(Icons.add,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              HorizontalSizeBox(height: 20),
                              Row(
                                children: [
                                  const Expanded(
                                      child: Text(
                                          "visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available."))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      HorizontalSizeBox(height: 20),
                    ],
                  );
                }),
            Container(
              height: 100,
              width: 320,
              color: const Color(0xFFE9F4F9),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('HAVE A PROBLEM?',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    subtitle: const Text('We provide you the help'),
                    trailing: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                        child: Text('GET HELP',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
