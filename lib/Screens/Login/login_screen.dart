import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/body.dart';

//Classe para interface da tela de login 
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        elevation: 0, //AppBar with no elevation
        backgroundColor: Color(0xff332F27), //AppBar with same colos as the screen
        leading: IconButton( //AppBar Button on the left
            icon: Icon(Icons.arrow_back, size: 30) //Icon
            , onPressed: (){/* To-Do onPressed */ }, //onPressed Function
            color: Colors.blue, //Icon Color
            ),
        ),
      backgroundColor: Color(0xff332F27), //Scaffold background color
      body: Body() //Body of the screen
    );
  }
}