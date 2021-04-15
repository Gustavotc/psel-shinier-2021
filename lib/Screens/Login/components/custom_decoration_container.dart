import 'package:flutter/material.dart';

//Class to create a rounded border decoration container
class CustomDecorationContainer extends StatelessWidget {
  const CustomDecorationContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.12,
      height: 6,
      decoration: BoxDecoration(
          color: Color(0xffC4C4C4), borderRadius: BorderRadius.circular(30)),
    );
  }
}
