import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Profile/pages/change_password_page.dart';

//Class to create a custom change password button
class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => _buildChangePasswordPage(context),
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

  _buildChangePasswordPage(context){
    showModalBottomSheet( // Open bottom sheet
      shape: RoundedRectangleBorder(   //Shape of the bottom sheet (circular top borders )
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      barrierColor: Colors.black45, //Background color page
      elevation: 10, //Elevation of the bottom sheet page
      context: context,
      builder: (BuildContext bc) {  //Build to create the bottom sheet page
        return ChangePasswordPage(
          text: "Informe abaixo o email utilizado em seu cadastro para recuperar a senha.",
          hint: "Email",
          isTokenPage: false,
        );
      });
  }

}