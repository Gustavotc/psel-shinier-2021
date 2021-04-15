import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Profile/components/profile_header.dart';

import 'edit_profile_buttons.dart';
import 'user_profile_infos.dart';

//Class to create Profile Page Body
class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column( //Column to wrap all the content
      crossAxisAlignment: CrossAxisAlignment.start, //Left border aligment
      children: <Widget>[
        ProfileHeader(), //Custom Widget to show a profile picture (Showing a color for demonstration)
        UserProfileInfos(), //show all user profile infos
        EditProfileButtons(), //show change password and Edit profile infos buttons  
      ],
    );
  }
}







