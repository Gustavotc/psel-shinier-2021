import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/More/components/social_icons_icons.dart';

//Class to create the Contact us Page
class CustomContactPage extends StatelessWidget {
  const CustomContactPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog( //Creates a simple dialog
      children: <Widget>[
        SimpleDialogOption( //Show option 1: WhatsApp
          onPressed: () { //OnPressed function to receiver user answer
            Navigator.pop(context); //Closes the dialog
          },
          child: Padding( //Creates a custom row with two icons and a text
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(SocialIcons.whatsapp, color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("WhatsApp", style: TextStyle(fontSize: 20),),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded, size: 20,),
              ],
            ),
          ),            
        ),
        Divider(thickness: 1.5, indent: 16, endIndent: 16), //Show a horizontal divider
        SimpleDialogOption( //Show option 2: Email
          onPressed: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.email_outlined),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Email", style: TextStyle(fontSize: 20),),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded, size: 20,),
              ],
            ),
          ),            
        ),
      ],
    );
  }
}