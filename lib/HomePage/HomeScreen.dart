import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/HomePage/menu_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CommonWidgets/TextFieldWidget.dart';

class HomePage extends StatelessWidget {
  TextEditingController SearchController = TextEditingController();

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menubutton()),
                ),
            child: Icon(Icons.menu, color: Colors.black, size: 30)),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              width: 450,
              child: Row(
                children: [
                  Stack(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: ListTile(
                      title: Text('Hi, Kevin L.Lablance'),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text('How is Your Health?'),
                      ),
                      trailing: Icon(Icons.shopping_cart),
                    ),
                  ),
                ],
              ),
            ),
            TextFieldWidget(
                blueColor.withAlpha(80),
                SearchController,
                TextInputType.emailAddress,
                TextInputAction.next,
                TextCapitalization.none,
                'Enter Your Name',
                false,
                256),
            Center(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Find Your Desired',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    TextSpan(
                        text: ' Doctor Right Now.!',
                        style: TextStyle(color: Colors.red, fontSize: 20)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
