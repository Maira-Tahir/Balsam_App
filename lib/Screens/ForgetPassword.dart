import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/Screens/SignUp.dart';
import 'package:balsam/Screens/VerificationCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/ButtonWidget.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';
import '../CommonWidgets/TextFieldWidget.dart';

class ForgetPassword extends StatelessWidget {
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
              children: [
                InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        ),
                    child: Icon(CupertinoIcons.arrow_left)),
                const Padding(
                  padding: EdgeInsets.only(left: 75),
                  child: Text(
                    "FORGET PASSWORD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            HorizontalSizeBox(
              height: 50,
            ),
            const Text(
              "We Need Your Registration Phone Number to Send You Password Reset Code?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            HorizontalSizeBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email ID*',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                emailController,
                TextInputType.emailAddress,
                TextInputAction.next,
                TextCapitalization.none,
                'Enter Your Email',
                false,
                256),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Via Sim*',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                emailController,
                TextInputType.emailAddress,
                TextInputAction.next,
                TextCapitalization.none,
                'Enter Your Phone Number',
                false,
                256),
            HorizontalSizeBox(
              height: 30,
            ),
            ButtonWidget(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationCode()));
                },
                color: blueColor,
                text: 'SEND CODE'),
          ],
        ),
      )),
    );
  }
}
