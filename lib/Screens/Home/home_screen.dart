import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/More/more_screen.dart';
import 'package:psel_shinier_2021/Screens/Profile/profile_screen.dart';
import 'package:psel_shinier_2021/components/CustomBottomNavBar.dart';

//Classe to create the Home page interface
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int _currentPage = 0; //var to control the selected page index

  @override
  Widget build(BuildContext context) {
  
    final List<Widget> _screns = [ //List to create an index for each page
      Text("1"),
      Text("2"),
      ProfileScreen(), //Loads the Profile Screen
      MoreScreen(), //Load the More Screen
    ];

    return SafeArea(  //Ensure that all widgets will be visible
      child: Scaffold( //Page structure
        body: _screns[_currentPage], //Body shows the selected index page
        bottomNavigationBar: CustomBottomNavBar( //Custom navBar
          defaultIndex: 0, //Default page initialization
          onChange: (index){ //Function to build the new page
            setState(() { //Updates the page
              _currentPage = index; //Updates the navBar selected index
            });
          },
        ),
      ),
    );
  }
}