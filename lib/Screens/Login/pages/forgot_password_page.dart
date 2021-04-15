import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

import '../components/custom_decoration_container.dart';

//Function to open a bottom sheet to recover password
void buildForgotPasswordPage(context) {
  Size size = MediaQuery.of(context).size; //Screen size variable

  showModalBottomSheet( // Open bottom sheet
      shape: RoundedRectangleBorder(   //Shape of the bottom sheet (top borders circulars)
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      barrierColor: Colors.white38, //Background color page
      elevation: 10, //Elevation of the bottom sheet page
      context: context,
      builder: (BuildContext bc) {  //Build to create the bottom sheet page
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
                CustomTextField(onChanged: (value) {}, hint: "Email", password: false), //Email Input TextField
                SizedBox(height: size.height *0.08), //Space between Container and Forgot Password text
                CustomButton( // Continue Button
                  text: "Continuar",
                  onPressed: () {/* To-Do onPressed */},
                ),
              ],
            ),
          ),
        );
      });
}


