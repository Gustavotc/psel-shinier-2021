import 'package:flutter/material.dart';

//Class to create the forgot my password button
class ForgotPasswordButton extends StatelessWidget {

  final Function onTap;   //onTap Function

  //Constructor with required variables
  const ForgotPasswordButton({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Text(
        "Esqueci a senha",
        style: TextStyle(
          color: Color(0xff4472C4),
          fontSize: 16,
          fontWeight: FontWeight.w400
        ),
      ),
      onTap: onTap, //Sets onTap function received by the constructor
    );
  }

}