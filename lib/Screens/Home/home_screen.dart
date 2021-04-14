import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Profile/profile_screen.dart';

import 'components/custom_decoration_container.dart';

//Classe to create the Home page interface
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 2;
  @override
  Widget build(BuildContext context) {
  
    final List<Widget> _screns = [
      Text("1"),
      Text("2"),
      ProfileScreen(),
      Text("4"),
    ];

    return SafeArea(
      child: Scaffold(
        body: _screns[_currentPage],
        bottomNavigationBar: Container(
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
                          buildNavbarItem(
                            Icons.home_outlined,
                            "Início",
                            0,
                          ),
                           buildNavbarItem(
                            Icons.star_border_rounded,
                            "Notificações",
                            1,
                          ),
                          /*
                          CustomBottomMenuItem(
                            isSelected: false,
                            icon: Icons.star_border_rounded,
                            text: "Notificações",
                            index: 1
                          ), */
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          buildNavbarItem(
                            Icons.person,
                            "Perfil",
                            2,
                          ),
                           buildNavbarItem(
                            Icons.menu,
                            "Mais",
                            3,
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
        ),
      ),
    );
  }

  buildNavbarItem(IconData icon, String text, int index){
    return Expanded(
      child: InkWell(
        onTap: (){
          setState(() {
            _currentPage = index;
          });
        },
        splashColor: Colors.transparent,
              child: Column(
          children: [
            Icon(
              icon,
              color: index == _currentPage ? Colors.white : Color(0xff989898),
            ),
            Text(
              text,
              style: TextStyle(
                color: index == _currentPage ? Colors.white : Color(0xff989898),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

