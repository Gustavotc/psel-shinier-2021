import 'package:flutter/material.dart';

import 'custom_text_myprofile.dart';
import 'profile_item.dart';
import 'text_user_name.dart';

//Class to show all user profile infos
class UserProfileInfos extends StatelessWidget {
  const UserProfileInfos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //Screen size variable

    return Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 30 , 0),
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
          ),
          ProfileItem( //Custom widget to User email
            label: "Email",
            hint: "jpsouza@gmail.com",
          ),
          Row( //Custom widget to wrap city and state fields
            children: <Widget>[
              Flexible( 
                flex: 2, //Determines the proportion of the widgets 
                child: ProfileItem(
                  label: "Cidade",
                  hint: "São Paulo",
                ),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Flexible( 
                flex: 1, //Determines the proportion of the widgets 
                child: ProfileItem(
                  label: "Estado",
                  hint: "SP",
                ),
              ),
            ],
          ),
          ProfileItem( //Custom widget to User CPF
            label: "CPF",
            hint: "222.111.333-44",
            isCPF: true, //Sets numerical keyboard
          ),            
        ],
      ),
    );
  }
}