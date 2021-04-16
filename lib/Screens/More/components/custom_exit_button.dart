import 'package:flutter/material.dart';

//Class to create a custom exit button
class ExitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //Screen size variable

    return Container( //Return a Oulined Button with the screen width
      width: size.width,
      height: 60,
      child: OutlinedButton(
        child: Text('Sair do app'),
        style: OutlinedButton.styleFrom(
          textStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          primary: Colors.black,
          side: BorderSide(color: Colors.black, width: 2),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: () {
          Navigator.popAndPushNamed(context, "/"); //Returns to login page
        },
      ),
    );
  }
}