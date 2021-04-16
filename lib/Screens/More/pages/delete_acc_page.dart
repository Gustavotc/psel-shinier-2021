import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Login/components/custom_decoration_container.dart';
import 'package:psel_shinier_2021/Screens/More/components/leave_comment_textfield.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';

//Class to create the custom Delete Account Page
class DeleteAccPage extends StatefulWidget {
  const DeleteAccPage({Key key}) : super(key: key);

  @override
  _DeleteAccPageState createState() => _DeleteAccPageState();
}

class _DeleteAccPageState extends State<DeleteAccPage> {

   int _userChoice = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Screen size variable

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          //Column with all the page widgets
          mainAxisSize: MainAxisSize.min, //Height of the page
          mainAxisAlignment: MainAxisAlignment.start, //Vertical Aligment of the page
          children: [
            CustomDecorationContainer(), //Decoration Container
            SizedBox(height: size.height * 0.04), //Space between Container and Forgot Password text
            Text(
              //Delete Account text
              "Excluir minha conta",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //Delete Account text
                      "Deseja realmente excluir a sua conta?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        //Feedback text
                        "Deixe o seu feedback",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    _buildRadioItem(1, _userChoice, _onChanged(1), "Não gostei do aplicativo"),
                    _buildRadioItem(2, _userChoice, _onChanged(2), "Achei muito difícil de utilizar"),
                    _buildRadioItem(3, _userChoice, _onChanged(3), "Não me sinto seguro por aqui"),
                    _buildRadioItem(4, _userChoice, _onChanged(4), "Atendimento e suporte ruins"),
                    _buildRadioItem(5, _userChoice, _onChanged(5), "Outro"),
                    LeaveCommentTextField(),
                    SizedBox(height: size.height * 0.04),
                    CustomButton(
                      text: "Excluir", 
                      onPressed: () => Navigator.pop(context), //To-Do delete acc function
                      btnColor: Color(0xffFF6666),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onChanged(int choice){
    setState(() {
      _userChoice = choice;
    });
  }

  Container _buildRadioItem(int value, int groupValue, Function onChanged, String text) {
    return Container(
        child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Radio(
        value: value, 
        groupValue: groupValue, 
        onChanged: onChanged,
        //fillColor: MaterialStateColor.resolveWith((states) => Color(0xffBD1B24)),
        ),
      Text(text),
    ],
        ),
      );
  }
}

