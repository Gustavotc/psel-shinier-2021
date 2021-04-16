import 'package:flutter/material.dart';

//Class to create the More Screen
class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Text("More Screen"),
    );
  }
}