//Class to generate all the app Routes
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Home/home_screen.dart';
import 'package:psel_shinier_2021/Screens/Login/login_screen.dart';

class Routes {

  static Route<dynamic> generateRoutes(RouteSettings settings) { //Creates a Route object, with settings parameter

    switch( settings.name ) { //Switch to receive the route name and redirect to the desired page
      case "/": //Default page (Home)
        return MaterialPageRoute(
          builder:  (_) => LoginScreen()
          );
      case "/home": 
        return MaterialPageRoute(
          builder:  (_) => HomeScreen()
          );
      default: //Case the route doesn't exists
        _routeError();//Show a simple page with a message
    }
    return null;
  }

  //Creates and show a basic page with error message
  static Route<dynamic> _routeError(){

    return MaterialPageRoute(
      builder: (_){
        return Scaffold(
          body: Center(
            child: Text("Tela não encontrada..."),
            ),
        );
      }
    );
  }

}