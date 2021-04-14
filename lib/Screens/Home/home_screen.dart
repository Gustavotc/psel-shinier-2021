import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/components/CustomBottonMenuItem.dart';

import 'components/custom_decoration_container.dart';

//Classe to create the Home page interface
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    int _currentPage = 0;

    void onTap(int index){
      setState(() {
        _currentPage = index;
      });
    }

    final List<Widget> _screns = [
      Text("1"),
      Text("2"),
      Text("3"),
      Text("4"),
    ];

    return SafeArea(
      child: Scaffold(
        body: _screns[_currentPage],
        bottomNavigationBar: _buildCustomNavigationBar(),
      ),
    );
  }
}

Widget _buildCustomNavigationBar() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xff332F27),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    CustomBottomMenuItem(
                      isSelected: true,
                      icon: Icons.home_outlined,
                      text: "Início",
                    ),
                    CustomBottomMenuItem(
                      isSelected: false,
                      icon: Icons.star_border_rounded,
                      text: "Notificações",
                    ),
                  ],
                ),
              ),
              Spacer(),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    CustomBottomMenuItem(
                      isSelected: false,
                      icon: Icons.person,
                      text: "Perfil",
                    ),
                    CustomBottomMenuItem(
                      isSelected: false,
                      icon: Icons.menu,
                      text: "Mais",
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomDecorationMenuContainer()
        ],
      ),
    ),
  );
}


