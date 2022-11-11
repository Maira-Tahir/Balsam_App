import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/CommonWidgets/VerticalSizedBox.dart';
import 'package:balsam/HomePage/HomeScreen.dart';
import 'package:balsam/Screens/ForgetPassword.dart';
import 'package:balsam/Screens/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/ButtonWidget.dart';
import '../CommonWidgets/HorizontalSizeBox.dart';
import '../CommonWidgets/TextFieldWidget.dart';

class SignUp extends StatelessWidget {
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
              height: 10,
            ),
            const Text(
              "LET'S SIGN UP",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            Container(
                height: 200,
                alignment: Alignment.center,
                child: Image.asset('assets/images/Logo.png')),
            HorizontalSizeBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Full Name*',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                emailController,
                TextInputType.emailAddress,
                TextInputAction.next,
                TextCapitalization.none,
                'Enter Your Name',
                false,
                256),
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
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            ButtonWidget(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                color: blueColor,
                text: 'SIGN IN'),
            HorizontalSizeBox(
              height: 10,
            ),
            const Text(
              'Or Continue With',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            HorizontalSizeBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 50,
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
                      const Text(
                        'GOOGLE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                VerticalSizeBox(width: 15),
                Container(
                  height: 50,
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
                      const Text(
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
                MaterialPageRoute(builder: (context) => LoginScreen()),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Already Have an Account? SignIn",
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
