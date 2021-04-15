import 'package:flutter/material.dart';

class CustomDecorationMenuContainer extends StatelessWidget {
  const CustomDecorationMenuContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, bottom: 8),
      width: 140,
      height: 6,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
    );
  }
}