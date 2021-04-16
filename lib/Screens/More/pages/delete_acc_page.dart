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

//Class to create the delete account page
class _DeleteAccPageState extends State<DeleteAccPage> {
  String _userChoice = "Não gostei do aplicativo"; //Default choice

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Screen size variable

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            //Column with all the page widgets
            mainAxisSize: MainAxisSize.min, //Height of the page
            mainAxisAlignment:
                MainAxisAlignment.start, //Vertical Aligment of the page
            children: [
              CustomDecorationContainer(), //Decoration Container
              SizedBox(
                  height: size.height *
                      0.04), //Space between Container and Forgot Password text
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
                      Column( //Column to wrap radio options
                        children: [
                          RadioListTile(
                            activeColor: Color(0xffBD1B24),
                            title: Text("Não gostei do aplicativo"),
                            value: "Não gostei do aplicativo",
                            groupValue: _userChoice,
                            onChanged: (newValue) {
                              setState(() {
                                _userChoice = newValue;
                              });
                            },
                          ),
                          RadioListTile(
                            activeColor: Color(0xffBD1B24),
                            title: Text("Achei muito difícil de utilizar"),
                            value: "Achei muito difícil de utilizar",
                            groupValue: _userChoice,
                            onChanged: (newValue) {
                              setState(() {
                                _userChoice = newValue;
                              });
                            },
                          ), 
                          RadioListTile(
                            activeColor: Color(0xffBD1B24),
                            title: Text("Não me sinto seguro por aqui"),
                            value: "Não me sinto seguro por aqui",
                            groupValue: _userChoice,
                            onChanged: (newValue) {
                              setState(() {
                                _userChoice = newValue;
                              });
                            },
                          ), 
                          RadioListTile(
                            activeColor: Color(0xffBD1B24),
                            title: Text("Atendimento e suporte ruins"),
                            value: "Atendimento e suporte ruins",
                            groupValue: _userChoice,
                            onChanged: (newValue) {
                              setState(() {
                                _userChoice = newValue;
                              });
                            },
                          ), 
                          RadioListTile(
                            activeColor: Color(0xffBD1B24),
                            title: Text("Outro"),
                            value: "Outro",
                            groupValue: _userChoice,
                            onChanged: (newValue) {
                              setState(() {
                                _userChoice = newValue;
                              });
                            },
                          ), 
                        ],
                      ),
                      LeaveCommentTextField(), //Custom textfield for comments 
                      SizedBox(height: size.height * 0.04),
                      CustomButton( //Custom Delete Button
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
      ),
    );
  }
}
