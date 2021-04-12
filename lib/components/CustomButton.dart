import 'package:flutter/material.dart';

// Class to create a custom Button
class CustomButton extends StatelessWidget {

  final String text;        //Button text
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

    return Container(
      decoration: BoxDecoration( 
        color: Color(0xff4472C4),
        borderRadius: BorderRadius.circular(10),
      ),
      width: size.width,   //Sets the maximum screen width 
      child: TextButton(
        onPressed: () {
          onPressed();      //Sets the function received by the constructor
        }, 
        child: Text(
          text,             //Sets the text received by the constructor
          style: TextStyle(
            color: Colors.white
            ),
        ),
        ),
    );
  }
}