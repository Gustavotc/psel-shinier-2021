import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/More/components/custom_more_item.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';

//Class to create the More Screen
class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
              child: Column(
      children: <Widget>[
        CustomMoreItem(text: "Configurações", onTap: (){},),
        CustomMoreItem(text: "Fale conosco",onTap: (){},),
        CustomMoreItem(text: "Termos de uso",onTap: (){},),
        CustomMoreItem(text: "Excluir minha conta",onTap: (){},),
        Expanded(
                          child: Container(
          //height: 500,
          color: Colors.amber,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomButton(text: "Sair do app", onPressed: (){}),
                ),
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    Text("Fique por dentro das novidades"),
                    Row(
                      children: [
                        _buildSocialItem(0xf30c),
                        _buildSocialItem(0xf16d),
                        _buildSocialItem(0xf09a),
                        _buildSocialItem(0xf099),
                      ],
                    )
                  ],
                ),
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

  _buildSocialItem(int code){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
         IconData(code, fontFamily: 'SocialIcons'),
         color: Color(0xff989898), 
         size: 40
         ),
    );
  }

}