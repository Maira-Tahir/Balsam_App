import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/Screens/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/ButtonWidget.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';
import '../CommonWidgets/TextFieldWidget.dart';

class ChangePassword extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor,
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            HorizontalSizeBox(
              height: 50,
            ),
            Row(
              children: const [
                Icon(CupertinoIcons.arrow_left),
                Padding(
                  padding: EdgeInsets.only(left: 75),
                  child: Text(
                    "CHANGE PASSWORD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            HorizontalSizeBox(
              height: 50,
            ),
            const Text(
              "Please Enter Your Email Address to Request a Password Reset.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            HorizontalSizeBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'New Password*',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                emailController,
                TextInputType.emailAddress,
                TextInputAction.next,
                TextCapitalization.none,
                'Enter Your Password',
                false,
                256),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Confirm Password*',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                emailController,
                TextInputType.emailAddress,
                TextInputAction.next,
                TextCapitalization.none,
                'Enter Your Password',
                false,
                256),
            HorizontalSizeBox(
              height: 30,
            ),
            ButtonWidget(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                color: blueColor,
                text: 'SAVE'),
          ],
        ),
      )),
    );
  }
}
