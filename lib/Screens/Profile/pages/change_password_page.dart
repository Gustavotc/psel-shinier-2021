import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/custom_decoration_container.dart';
import 'package:psel_shinier_2021/Screens/Profile/pages/new_password_page.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

//class to create a bottom sheet to change password
class ChangePasswordPage extends StatelessWidget {

  final bool isTokenPage; //var to show TokenPage components
  final String text;      //Text displayed in the center
  final String hint;      //TextField hint

  const ChangePasswordPage({
    this.isTokenPage = false , //When true, shows the TokenPage 
    @required this.text, 
    @required this.hint
    });

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //Screen size variable

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column( //Column with all the page widgets 
          mainAxisSize: MainAxisSize.min, //Height of the page
          mainAxisAlignment: MainAxisAlignment.start, //Vertical Aligment of the page
          children: [
            CustomDecorationContainer(), //Decoration Container 
            SizedBox(height: size.height *  0.04), //Space between Container and Change Password text
            Text( //Change Password text
              "Alterar senha",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox( height: size.height * 0.04), //Space between change Password text and center text
            Container( //Custom container to wrap the text
              width: size.width * 0.7, //Width of the container
              child: Text(
                text, //sets the text received by the constructor
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center, //Aligns the text in the center of the container
              ),
            ),
            SizedBox(height: size.height * 0.04), //Space between center text and textfield
            CustomTextField(  
              hint: hint, //sets hint text received by the constructor
              password: false,
              isHintTextBlack: isTokenPage,
              ), //Email Input TextField
            SizedBox(height: size.height * 0.08), //Space between Container and Forgot Password text
            CustomButton( // Continue Button
              text: "Continuar",
              onPressed: () { isTokenPage //Verify if it's the TokenPage
                ? _buildNewPasswordPage(context) //If it is, onPressed shows the new password page
                : _buildChangePasswordPage(context, true); //If it not, onPressed rebuilds the page with TokenPage parameters
                },
            ),
            SizedBox(height: size.height * 0.02), //Space between Continue Button and bottom border
          ],
        ),
      ),
    );
  }

  //Function to create the ChangePasswordPage - Here user decide if wants to change the password
  _buildChangePasswordPage(context, isTokenPage){
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
        return ChangePasswordPage( //Returns ChangePasswordPage or TokenPage layout based on the bool isTokenPage
          text: "Informe o código de validação que chegou no email informado",
          hint: "Código de validação",
          isTokenPage: isTokenPage,
        );
      });
  }

  //Function to create the NewPasswordPage - Here the user informs the new password
  _buildNewPasswordPage(context){
    Navigator.pop(context);
    showModalBottomSheet( // Open bottom sheet
      shape: RoundedRectangleBorder(   //Shape of the bottom sheet (circular top borders )
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      barrierColor: Colors.black45, //Background color page
      elevation: 10, //Elevation of the bottom sheet page
      context: context, //Page context
      builder: (BuildContext bc) {  //Build to create the bottom sheet page
        return NewPasswordPage(); //Returns NewPasswordPage layout
      });
  }
}
