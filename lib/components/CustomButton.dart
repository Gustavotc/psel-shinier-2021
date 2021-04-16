import 'package:flutter/material.dart';

// Class to create a custom Button
class CustomButton extends StatelessWidget {
  final String text; //Button text
  final Function onPressed; //On pressed function
  final Color btnColor;

  //Constructor with required parameters
  const CustomButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.btnColor = const Color(0xff4472C4),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Screen size variable

    return MaterialButton(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minWidth: size.width, 
      height: 60,
      color: btnColor,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () {
        onPressed();
      },
    );
  }
}
