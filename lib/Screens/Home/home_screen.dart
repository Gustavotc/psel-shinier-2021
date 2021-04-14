import 'package:flutter/material.dart';

//Classe to create the Home page interface
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff332F27),
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: "Início",
            icon: Icon(Icons.home_outlined, color: Color(0xff989898),
             )
          ),
          BottomNavigationBarItem(
            label: "Notificações",
            icon: Icon(Icons.star_border_outlined, color: Color(0xff989898))
          ),
          BottomNavigationBarItem(
            label: "Perfil",
            icon: Icon(Icons.person, color: Color(0xff989898))
          ),
          BottomNavigationBarItem(
            label: "Mais",
            icon: Icon(Icons.menu, color: Color(0xff989898))
          ),
        ],
      ),
    );
  }
}
