import 'package:flutter/material.dart';

import 'components/body.dart';

//Class to create Profile Page Body
class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( //Profile page ScrollView
        child: Body() //Calls Profile Page body
        ), 
    );
  }
}