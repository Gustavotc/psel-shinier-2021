import 'package:flutter/material.dart';

// Class to create a custom Button
class CustomButton extends StatelessWidget {
  final String text; //Button text
  final Function onPressed; //On pressed function

  //Constructor with required parameters
  const CustomButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Screen size variable

    return MaterialButton(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minWidth: size.width, 
      height: 50,
      color: Color(0xff4472C4),
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
      splashColor: Colors.lightBlue,
    );
  }
}
