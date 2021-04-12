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
      backgroundColor: Color(0xff332F27),
      body: Body(),
    );
  }
}