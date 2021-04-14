import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Profile/components/profile_header.dart';
import 'package:psel_shinier_2021/Screens/Profile/components/profile_item.dart';

import 'package:psel_shinier_2021/components/CustomButton.dart';

import 'change_password_button.dart';
import 'custom_text_myprofile.dart';
import 'text_user_name.dart';

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

    return Column( //Column to wrap all the content
      crossAxisAlignment: CrossAxisAlignment.start, //Left border aligment
      children: <Widget>[
        ProfileHeader(), //Custom Widget to show a profile picture (Showing a color for demonstration)
        Padding(
          padding: EdgeInsets.all(30),
          child: Column( //Column to wrap the profile informations
            crossAxisAlignment: CrossAxisAlignment.start, //Left border aligment
            mainAxisSize: MainAxisSize.max, //Takes all the screen height avaliable
            children: <Widget>[
              CustomTextMyProfile(), //Custom Widget to show a Customized Text
              SizedBox(height: size.height * 0.04),
              TextUserName(name: "João Paulo Souza"), //Custom widget to show the username 
              SizedBox(height: size.height * 0.03),   //Space between Username and profile details
              ProfileItem( //Custom widget to User full name
                label: "Nome completo",
                hint: "João Paulo de Souza",
                onChanged: (value) {},
              ),
              ProfileItem( //Custom widget to User email
                label: "Email",
                hint: "jpsouza@gmail.com",
                onChanged: (value) {},
              ),
              Row( //Custom widget to city and state
                children: <Widget>[
                  Flexible( 
                    flex: 2, //Determines the proportion of the widgets 
                    child: ProfileItem(
                      label: "Cidade",
                      hint: "São Paulo",
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Flexible( //Determines the proportion of the widgets 
                    flex: 1,
                    child: ProfileItem(
                      label: "Estado",
                      hint: "SP",
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              ProfileItem( //Custom widget to User CPF
                label: "CPF",
                hint: "222.111.333-44",
                onChanged: (value) {/* To-Do onChanged */},
              ),
              SizedBox(height: size.height * 0.03),
              ChangePasswordButton(), //Custom buttom to change user password
              SizedBox(height: size.height * 0.03),
              CustomButton( //Custom buttom to save profile informations modifications
                  text: "Salvar", 
                  onPressed: () {/* To-Do onPressed (Save informations) */}
               ),
            ],
          ),
        ),
      ],
    );
  }
}



