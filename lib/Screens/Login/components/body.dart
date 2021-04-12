import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

class Body extends StatefulWidget {  
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //Screen Size
    bool useFingerPrint = true;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(25),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.arrow_back, 
              color: Color(0xff4472C4),
              size: 35,
              ),
            SizedBox(height: size.height * 0.05,),
            Text(
              "Entrar",
              style: TextStyle(
                color: Color(0xff68A35D),
                fontSize: 17,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: size.height * 0.01,),
            Text(
              "Esqueci a senha",
              style: TextStyle(
                color: Color(0xff4472C4),
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: size.height * 0.03,),
            CustomTextField(
              hint: "Email",
              onChanged: (value) { /* To-Do onChanged */ },
              password: false,
            ),
            CustomTextField(
              hint: "Senha",
              onChanged: (value) { /* To-Do onChanged */ },
              password: true,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Usar leitor de digital",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Switch(
                  value: useFingerPrint, 
                  onChanged: (value) {
                    setState(() {   
                      useFingerPrint = value;
                    });
                  }
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

