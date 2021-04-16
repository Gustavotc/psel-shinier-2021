import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/More/components/custom_more_item.dart';

import 'components/custom_exit_button.dart';
import 'components/social_medias.dart';

//Class to create the More Screen
class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column( //Column to wrap all the widgets
          children: <Widget>[
            CustomMoreItem( //Create a new custom option item
              text: "Configurações",
              onTap: () {},
            ),
            CustomMoreItem( //Create a new custom option item
              text: "Fale conosco",
              onTap: () {},
            ),
            CustomMoreItem( //Create a new custom option item
              text: "Termos de uso",
              onTap: () {},
            ),
            CustomMoreItem( //Create a new custom option item
              text: "Excluir minha conta",
              onTap: () {},
            ),
            Expanded( //Fill the rest of screen height
              child: Column( //Wrap Social media icons and text
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ExitButton(), //Creates Exit Button
                  SocialMedias(), //Creates Social Media IconButtons
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}

