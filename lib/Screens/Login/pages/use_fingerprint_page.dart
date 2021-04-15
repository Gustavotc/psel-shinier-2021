import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/custom_decoration_container.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';

//Function to open a bottom sheet with sign-in informations
void buildUseFirgerPrintPage(context) {
  Size size = MediaQuery.of(context).size;  //Screen size variable

  showModalBottomSheet( // Open bottom sheet
      shape: RoundedRectangleBorder(   //Shape of the bottom sheet (top borders circulars)
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      barrierColor: Colors.white38, //Background color page
      elevation: 10, //Elevation of the bottom sheet page
      context: context,
      builder: (BuildContext bc) {  //Build to create the bottom sheet page
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column( //Column with all the page widgets 
              mainAxisSize: MainAxisSize.min, //Height of the page
              mainAxisAlignment: MainAxisAlignment.start, //Horizontal Aligment of the page
              children: [
                CustomDecorationContainer(), //Decoration Container 
                SizedBox(height: size.height * 0.05), //Space between Container and Icon
                    Icon(Icons.fingerprint, size: size.width * 0.2), // Fingerprint Icon
                    SizedBox(height: size.height * 0.02), //Space between Icon and Text
                    Text( //Touch the sensor text
                      "Toque no sensor de digital para entrar",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(  height: size.height * 0.06), //Space between Touch the sensor Text and Button
                    CustomButton( //Cancel Button
                        text: "Cancelar",
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(height: size.height * 0.01), //Space between Text and Bottom border
              ],
            ),
          ),
        );
      });
}

