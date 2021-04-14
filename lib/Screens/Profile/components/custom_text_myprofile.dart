import 'package:flutter/material.dart';

class CustomTextMyProfile extends StatelessWidget {
  const CustomTextMyProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Color(0xff4472C4),
          width: 3,
        ),
      )),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 6.0),
        child: Text(
          "Meus dados",
          style: TextStyle(
            color: Color(0xff4472C4),
            ),
            textAlign: TextAlign.start,
        ),
      ),
    );
  }
}