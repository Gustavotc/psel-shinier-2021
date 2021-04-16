import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/More/components/social_medias.dart';
import 'package:psel_shinier_2021/Screens/More/pages/contact_page.dart';
import 'package:psel_shinier_2021/Screens/More/pages/delete_acc_page.dart';

import 'custom_exit_button.dart';
import 'custom_more_item.dart';

//Class to create the body of the More Page
class MoreBody extends StatelessWidget {
  const MoreBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        //Column to wrap all the widgets
        children: <Widget>[
          CustomMoreItem(
            //Create Configurations option item
            text: "Configurações",
            onTap: () {},
          ),
          CustomMoreItem(
            //Create contact us option item
            text: "Fale conosco",
            onTap: () => _buildContactPage(context),
          ),
          CustomMoreItem(
            //Create terms of use option item
            text: "Termos de uso",
            onTap: () {},
          ),
          CustomMoreItem(
            //Create delete account option item
            text: "Excluir minha conta",
            onTap: () => _buildDeleteAccPage(context),
          ),
          Expanded(
            //Fill the rest of screen height
            child: Column(
              //Wrap Social media icons and text
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ExitButton(), //Creates Exit Button
                SocialMedias(), //Creates Social Media IconButtons
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Function to build DeleteAcc
  _buildDeleteAccPage(context) {
    showModalBottomSheet( // Open bottom sheet
        shape: RoundedRectangleBorder( //Shape of the bottom sheet (top circular borders)
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        )),
        barrierColor: Colors.black45, //Background color page
        elevation: 10, //Elevation of the bottom sheet page
        context: context,
        builder: (BuildContext bc) { //Build to create the bottom sheet page
          return DeleteAccPage(); //Shows ForgetPasswordPage
        });
  }

  //Function to show the Contact options and redirect user
  Future <void> _buildContactPage(context) async {

    //Waits for user choice
    switch (await showDialog(
      context: context, 
      builder: (BuildContext bc) {
        return CustomContactPage(); //Shows contact options page
      }
    )) {
      //To-Do Switch cases to redirect user
    }
  }
}