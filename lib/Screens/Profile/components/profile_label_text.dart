import 'package:flutter/material.dart';

class ProfileLabelText extends StatelessWidget {

  final String text;

  const ProfileLabelText({
    @required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: TextStyle(
        fontSize: 15, 
        color: Color(0xff332F27)
        ),
        );
  }
}