import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/text_login.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

import 'forgot_password_button.dart';
import 'use_fingerprint_page.dart';

class Body extends StatefulWidget {   
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  bool _useFingerPrint = true; 

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //Screen Size
               //Switch variable

    return Container(
      height: size.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(25),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.arrow_back, 
              color: Color(0xff4472C4),
              size: 35,
              ),
            SizedBox(height: size.height * 0.05,), //Space between arrow Icon and Login text
            TextLogin(),                           //Simple Text
            SizedBox(height: size.height * 0.01,), //Space between Login text and Forgot  my password text
            ForgotPasswordButton(onTap: (){},),
            SizedBox(height: size.height * 0.03,),
            CustomTextField(                                
              hint: "Email",
              onChanged: (value) { /* To-Do onChanged */ },
              password: false,
            ),
            CustomTextField(
              hint: "Senha",
              onChanged: (value) { /* To-Do onChanged */ },
              password: true,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Usar leitor de digital",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(), //Space to fill the row       
                Switch(
                  value: _useFingerPrint, 
                  onChanged: (bool value){
                    setState(() {
                      _useFingerPrint = value;
                    });
                  },
                  ), 
              ],
            ), 
            SizedBox(height: size.height * 0.08,),
            CustomButton(
              text: "Entrar",
              onPressed: (){ useFirgerPrintPage(context); },
            ),
          ],
        ),
      ),
    );
  }
    
}






