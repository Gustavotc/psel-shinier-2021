import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';

import 'change_password_button.dart';

//Class to wrap change password and edit profile infos buttons
class EditProfileButtons extends StatelessWidget {
  const EditProfileButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //Screen size variable

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChangePasswordButton(), //Shows custom change password button
          SizedBox(height: size.height * 0.03), //Space between buttons
          CustomButton( //Custom buttom to save profile informations modifications
              text: "Salvar",
              onPressed: () {/* To-Do onPressed (Save informations) */}
           ),
        ],
      ),
    );
  }
}
