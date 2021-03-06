import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/custom_decoration_container.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

//Class to create the ForgotPasswordPage
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage();

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
            SizedBox(height: size.height *  0.04), //Space between Container and Forgot Password text
            Text( //Forgot Password text
              "Esqueci a senha",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox( height: size.height * 0.04), //Space between Container and Forgot Password text
            Container( //Recovery email text
              width: size.width * 0.7,
              child: Text(
                "Informe o email utilizado em seu cadastro para recuperar a senha.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height * 0.04), //Space between Container and Forgot Password text
            CustomTextField( 
              hint: "Email", 
            ), //Email Input TextField
            SizedBox(height: size.height *0.08), //Space between Container and Forgot Password text
            CustomButton( // Continue Button
              text: "Continuar",
              onPressed: () => /* To-Do onPressed */ Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}