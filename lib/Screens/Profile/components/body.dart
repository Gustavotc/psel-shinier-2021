import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Profile/components/profile_header.dart';
import 'package:psel_shinier_2021/Screens/Profile/components/profile_label_text.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';

import 'custom_text_myprofile.dart';

//Class to create Profile Page Body
class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Screen size variable

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ProfileHeader(),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CustomTextMyProfile(),
              Text("João Paulo Souza", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              ProfileLabelText(text: "Nome Completo"),
              //Name
              ProfileLabelText(text: "Email"),
              ProfileLabelText(text: "Email"),
              Row(
                children: <Widget>[
                  ProfileLabelText(text: "Cidade"),
                  ProfileLabelText(text: "Estado"),
                ],
              ),    
              ProfileLabelText(text: "CPF"),
              Text("alterar a minha senha"),
              CustomButton(text: "Salvar", onPressed: () {/* To-Do onPressed */})
            ],
          ),
        ),
      ],
    );
  }
}




