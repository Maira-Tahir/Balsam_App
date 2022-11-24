import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/Doctor/paymentsuccess.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/Screens/ForgetPassword.dart';
import 'package:balsam/Screens/SignUp.dart';
import 'package:balsam/Screens/VerificationCode.dart';
import 'package:balsam/cart/Order_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/ButtonWidget.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';
import '../CommonWidgets/TextFieldWidget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
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
              height: 30,
            ),
            const Text(
              'SIGN IN',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            HorizontalSizeBox(
              height: 30,
            ),
            Container(
                height: 200,
                alignment: Alignment.center,
                child: Image.asset('assets/images/Logo.png')),
            HorizontalSizeBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email Id*',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                emailController,
                TextInputType.emailAddress,
                TextInputAction.next,
                TextCapitalization.none,
                'Enter Email',
                false,
                256),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password*',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                passwordController,
                TextInputType.visiblePassword,
                TextInputAction.done,
                TextCapitalization.none,
                'Enter Password',
                true,
                256),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPassword()),
              ),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            HorizontalSizeBox(
              height: 25,
            ),
            ButtonWidget(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderDetails()));
                },
                color: blueColor,
                text: 'SIGN IN'),
            HorizontalSizeBox(
              height: 20,
            ),
            const Text(
              'Or Continue With',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            HorizontalSizeBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: (MediaQuery.of(context).size.width - 55) * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: blueColor.withOpacity(0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: 30,
                        width: 30,
                      ),
                      VerticalSizeBox(width: 10),
                      Text(
                        'GOOGLE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                VerticalSizeBox(width: 15),
                Container(
                  height: 60,
                  width: (MediaQuery.of(context).size.width - 55) * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: blueColor.withOpacity(0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/apple.png',
                        height: 30,
                        width: 30,
                      ),
                      VerticalSizeBox(width: 10),
                      Text(
                        'APPLE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            HorizontalSizeBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Don't Have an Account? SignUp",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
