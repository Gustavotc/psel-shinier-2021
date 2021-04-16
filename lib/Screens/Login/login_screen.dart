import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/body.dart';
import 'package:psel_shinier_2021/components/CustomAppBar.dart';

//Classe to create the login page interface
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold( 
        appBar: buildAppBar(true), //Shows app bar
        backgroundColor: Color(0xff332F27), //Scaffold background color
        body: Body() //Body of the screen
      ),
    );
  }
}