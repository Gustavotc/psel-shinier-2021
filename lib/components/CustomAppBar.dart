import 'package:flutter/material.dart';

//Function to create the AppBar receiving the text and showIcon variables
AppBar buildAppBar(bool showIcon, {String text = ""}) {
  return AppBar(
      elevation: 0, //AppBar with no elevation
      backgroundColor: Colors.transparent, //Transparent appBar
      leading: showIcon ? IconButton(
        icon: Icon(Icons.arrow_back, size: 30), //Icon
        onPressed: () {/* To-Do onPressed */}, //onPressed Function
        color: Color(0xff4472C4), //Icon Color
      ) : null //Shows nothing case showIcon is false
      
      );
}
