import 'package:flutter/material.dart';
import 'package:sosol_md/sizelib.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/DSC_1003.jpg",
          height: getProportionateScreenHeight(315),
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
