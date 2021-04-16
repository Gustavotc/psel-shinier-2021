import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/More/components/custom_more_item.dart';

//Class to create the More Screen
class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            CustomMoreItem(text: "Configurações", onTap: (){},),
            CustomMoreItem(text: "Fale conosco",onTap: (){},),
            CustomMoreItem(text: "Termos de uso",onTap: (){},),
            CustomMoreItem(text: "Excluir minha conta",onTap: (){},),
          ],
        ),
      ),
    );
  }
}