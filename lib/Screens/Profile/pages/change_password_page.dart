import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/custom_decoration_container.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

//class to create a bottom sheet to change password
class ChangePasswordPage extends StatelessWidget {

  final bool isTokenPage;
  final String text;
  final String hint;

  const ChangePasswordPage(
      this.isTokenPage, 
      this.text, 
      this.hint
    );

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //Screen size variable

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column( //Column with all the page widgets 
          mainAxisSize: MainAxisSize.min, //Height of the page
          mainAxisAlignment: MainAxisAlignment.start, //Horizontal Aligment of the page
          children: [
            CustomDecorationContainer(), //Decoration Container 
            SizedBox(height: size.height *  0.04), //Space between Container and Forgot Password text
            Text( //Forgot Password text
              "Alterar senha",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox( height: size.height * 0.04), //Space between Container and Forgot Password text
            Container( //Recovery email text
              width: size.width * 0.7,
              child: Text(
                text,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height * 0.04), //Space between Container and Forgot Password text
            CustomTextField(
              onChanged: (value) {}, 
              hint: hint, 
              password: false,
              isTokenPage: isTokenPage,
              ), //Email Input TextField
            SizedBox(height: size.height * 0.08), //Space between Container and Forgot Password text
            CustomButton( // Continue Button
              text: "Continuar",
              onPressed: () {_buildInformTokenPage(context);},
            ),
            SizedBox(height: size.height * 0.02), //Space between Continue Button and bottom border
          ],
        ),
      ),
    );
  }

  _buildInformTokenPage(context){
    Navigator.pop(context);
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
          true, //isTokenpage
          "Informe o código de validação que chegou no email informado", //Text
          "Código de validação", //Hint
        );
      });
  }
}