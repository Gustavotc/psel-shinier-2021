import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Profile/components/profile_header.dart';

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
      children: <Widget>[
        ProfileHeader(),
      ],
    );
  }
}

