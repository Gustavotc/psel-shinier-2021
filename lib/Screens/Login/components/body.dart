import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/pages/forgot_password_page.dart';
import 'package:psel_shinier_2021/Screens/Login/components/text_login.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

import 'forgot_password_button.dart';
import '../pages/use_fingerprint_page.dart';

//Class to create the body of the Login in Page
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _useFingerPrint = true; //Switch variable

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size; //Screen Size variable

    return SingleChildScrollView( //Page ScrollView to prevent overflow when keyboard pops up
    physics: NeverScrollableScrollPhysics(),
      child: Container( //Container with Full screen size
        height: size.height, // sets Full screen height 
        width: double.infinity, // sets Full screen widht 
        child: Padding( //Container content padding
          padding: EdgeInsets.all(25),
          child: Column( //Column to organize the screen widgets 
            crossAxisAlignment: CrossAxisAlignment.start, // Horizontal aligment
            children: <Widget>[
              TextLogin(), //Simple Text
              SizedBox(height: size.height * 0.01,), //Space between Login text and Forgot  my password text
              ForgotPasswordButton( // Button to show the FotgetPasswordPage
                onTap: () => buildForgotPasswordPage(context), //Calls forget password page
              ),
              SizedBox(height: size.height * 0.03,), //Space between Forgot  my password text and Email input textField
              CustomTextField( //Email input textField 
                hint: "Email",
                onChanged: (value) {/* To-Do onChanged */},
                password: false, //The content is not a password
              ),
              CustomTextField( //Email input textField 
                hint: "Senha",
                onChanged: (value) {/* To-Do onChanged */},
                password: true, //The content is a password (hides the text and another keyboard type)
              ),
              Row( //Row to agroup a text and a switch
                children: <Widget>[
                  Text( //press fingerprint sensor text
                    "Usar leitor de digital",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(), //Space to fill the row
                  Switch( //Switch to choose use fingerprint or password
                    activeColor: Color(0xff4472C4), 
                    thumbColor: MaterialStateProperty.all(Color(0xFFFFFFFF)),
                    value: _useFingerPrint, //Variable to change the switch state
                    onChanged: (bool value) { //bool value receives the new switch state
                      setState(() { //setState to update the widget
                        _useFingerPrint = value; //Changes the local variable value 
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.08,), // Space between the Row and the sign-in button
              CustomButton( //Sign-in button
                text: "Entrar",
                onPressed: () => _signin() //calls onPressed Function
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Function validate Login 
  _signin(){
    FocusScope.of(context).unfocus(); //Removes the keyboard focus to close it (prevents errors case the login fails)
    _useFingerPrint //Verifies the authentication method
        ? buildUseFirgerPrintPage(context) //Case true: use fingerprint sensor
        : () {
            /* To-Do onPressed case Switch is off */
          };
  }
}
