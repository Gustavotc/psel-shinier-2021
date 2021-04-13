import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';
import 'package:psel_shinier_2021/components/CustomTextField.dart';

void forgotPasswordPage(context) {
  Size size = MediaQuery.of(context).size;

  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      barrierColor: Colors.white38,
      elevation: 10,
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.15,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Text(
                    "Esqueci a senha",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: size.width * 0.7,
                    child: Text(
                      "Informe o email utilizado em seu cadastro para recuperar a senha.",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomTextField(
                      onChanged: (value) {}, hint: "Email", password: false),
                  CustomButton(
                    text: "Continuar",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
