import 'package:flutter/material.dart';

//Class to create a custom profile item 
class ProfileItem extends StatelessWidget {
  final String label; // Input label text
  final String hint; // Hint Text
  final ValueChanged onChanged; // On Valeu changed Function

  //Constructor to receive the parameters
  const ProfileItem({
    @required this.label, 
    @required this.hint, 
    @required this.onChanged,
    }); 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            label, //Customized label text receives the constructor label value
            style: TextStyle(fontSize: 15, color: Color(0xff332F27)),
          ),
        ),
        TextField( //Custom TextField, 
          decoration: InputDecoration(
            hintText: hint, //Hint text received by the constructor
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
        ),
      ],
    );
  }
}
