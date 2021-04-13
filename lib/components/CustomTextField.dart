import 'package:flutter/material.dart';

// Class to create a custom TextField
class CustomTextField extends StatelessWidget {
  //Variables
  final String hint; // Hint Text
  final ValueChanged onChanged; // On Valeu changed Function
  final bool password; // Obscure text  and keyboardType verification

  //Constructor with required variables
  const CustomTextField({
    Key key,
    @required this.onChanged,
    @required this.hint,
    @required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText:
            password ? true : false, //If it's a passwoord, hides the text
        keyboardType: password
            ? TextInputType.text
            : TextInputType.emailAddress, //Defines the keyboard type
        decoration: InputDecoration(
          hintText: hint, //Hint text received
          border: InputBorder.none,
        ),
        onChanged:
            onChanged, //Value Changed Function received by the constructor
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child; //Final Widget (child) variable

  // Construtor passing widget (child)
  const TextFieldContainer(
      {Key key, @required this.child //Variable recieves the parameter
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff332F27)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child, //Child recieves the widget from the constructor
    );
  }
}
