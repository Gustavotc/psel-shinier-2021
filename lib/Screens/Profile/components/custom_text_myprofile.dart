import 'package:flutter/material.dart';

//Class to create a custom Widget, similar to a tabBar
class CustomTextMyProfile extends StatelessWidget {
  const CustomTextMyProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( //Creates a custom container with bottom border and a text 
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Color(0xff4472C4),
          width: 4,
        ),
      )),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 6.0),
        child: Text(
          "Meus dados",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff4472C4),
            ),
            textAlign: TextAlign.start,
        ),
      ),
    );
  }
}