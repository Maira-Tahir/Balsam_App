import 'package:flutter/cupertino.dart';

class HorizontalSizeBox extends StatelessWidget {
  double height;
  HorizontalSizeBox({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
