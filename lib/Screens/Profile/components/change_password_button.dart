import 'package:flutter/material.dart';

//Class to create a custom change password button
class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {/*To-Do onTap (changes user password) */},
      child: Row(
        mainAxisSize: MainAxisSize.min, //Row only wrap the children
        children: <Widget>[
          Text( //Butoton text
            "alterar a minha senha",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffBD1B24),
            ),
          ),
          Icon(  //Button Icon
            Icons.arrow_forward_ios_sharp,
            size: 18,
            color: Color(0xffBD1B24),
          ),
        ],
      ),
    );
  }
}
