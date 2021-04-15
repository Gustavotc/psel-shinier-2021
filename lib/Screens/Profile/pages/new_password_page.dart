import 'package:flutter/material.dart';

import 'package:psel_shinier_2021/Screens/Login/components/custom_decoration_container.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

//class to create a bottom sheet to change password
class NewPasswordPage extends StatelessWidget {
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
            Text( //Change Password text
              "Alterar senha",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox( height: size.height * 0.04), //Space between Container and Forgot Password text
            CustomTextField( //Custom TextField to inform the new password
              hint: "Nova senha", 
              isHintTextBlack: true,
              password: false
              ),
              CustomTextField( //Custom TextField to confirm the new password
              hint: "Repita a nova senha", 
              isHintTextBlack: true,
              password: false
              ),
            SizedBox(height: size.height * 0.08), //Space between Container and Forgot Password text
            CustomButton( // Save Button
              text: "Salvar",
              onPressed: () => Navigator.pop(context), //to-Do Save Function
            ),
            SizedBox(height: size.height * 0.02), //Space between Continue Button and bottom border
          ],
        ),
      ),
    );
  }
}
