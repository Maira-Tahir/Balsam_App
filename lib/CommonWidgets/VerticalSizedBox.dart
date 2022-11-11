import 'package:flutter/cupertino.dart';

class VerticalSizeBox extends StatelessWidget {
  double width;
  VerticalSizeBox({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
