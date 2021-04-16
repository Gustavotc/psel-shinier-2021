import 'package:flutter/material.dart';

class LeaveCommentTextField extends StatelessWidget {
  const LeaveCommentTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 125,
    decoration: InputDecoration(
      hintText: "Deixe seu comentário", //Hint text received by the constructor
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: UnderlineInputBorder( //custom bottom border color when enabled
        borderSide: BorderSide(color: Color(0xffC4C4C4)),
      ),
      focusedBorder: UnderlineInputBorder(  //custom bottom border color when focused
        borderSide: BorderSide(color: Color(0xffC4C4C4)),
      ),
      border: UnderlineInputBorder( //custom bottom border
        borderSide: BorderSide(color: Color(0xffC4C4C4)),
      ),
    ),
    );
  }
}
