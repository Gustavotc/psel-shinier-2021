import 'package:flutter/material.dart';

//Class to create the Login Text
class TextLogin extends StatelessWidget {
  const TextLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Entrar",
      style: TextStyle(
        color: Color(0xff68A35D),
        fontSize: 20,
        fontWeight: FontWeight.w700
      ),
    );
  }
}