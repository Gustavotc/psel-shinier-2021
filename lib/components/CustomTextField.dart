import 'package:flutter/material.dart';

// Class to create a custom TextField
class CustomTextField extends StatelessWidget {
  //Variables
  final String hint; // Hint Text
  final bool password; // Obscure text  and keyboardType verification
  final bool isHintTextBlack; // Checks if the hint color need to be black

  //Constructor with required variables
  const CustomTextField({
    Key key,
    @required this.hint,  //Hint text always needs to be informed
    this.password = false,  //Need to be informed when it's a password textfield
    this.isHintTextBlack = false, //It need to be informed as true only when it's the token page
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText:
            password ? true : false, //If it's a passwoord, hides the text
        keyboardType: password //Defines the keyboard type
            ? TextInputType.text
            : TextInputType.emailAddress, 
        decoration: InputDecoration(
          hintText: hint, //sets the Hint text received by the constructor
          hintStyle: TextStyle(
            color: isHintTextBlack ? Colors.black : null, //sets the hint text color to black when desired
          ),
          border: InputBorder.none, //Remove bottom border
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  
  final Widget child; //Final Widget (child) variable

  //Construtor to receive the child as a parameter
  const TextFieldContainer({
      Key key, 
      @required this.child //Variable receives the CustomTextField as child
      }): super(key: key);
      

  @override
  Widget build(BuildContext context) {
    return Container( //Creates a custom shape for the TextField
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff332F27)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child, //sets the CustomTextField received by the constructor as child
    );
  }
}
