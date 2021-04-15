import 'package:flutter/material.dart';

//Class to create a custom profile item 
class ProfileItem extends StatelessWidget {
  final String label; // Input label text
  final String hint; // Hint Text
  final ValueChanged onChanged; // On Value changed Function
  final bool isCPF; // Checks keyboard type

  //Constructor to receive the parameters
  const ProfileItem({
    this.isCPF = false,   //Sets text keyboard as default
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
          onChanged: onChanged, //Sets onChanged function received by the constructor (should be replaced by controller)
          maxLength: isCPF ?  14 : null, //Case it's a CPF, it must have 14 digits counting with . and -
          keyboardType: isCPF ? TextInputType.number : TextInputType.text, //Sets numerical keyboard if it's a numerical input
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
