import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/Screens/Home/components/custom_decoration_container.dart';

//Class to create a custom navBar
class CustomBottomNavBar extends StatefulWidget {

  final Function(int) onChange; //OnChange Function receiving index
  final int defaultIndex; //Default initialization index

  //Constructor to receive the parameters
  const CustomBottomNavBar({
    @required this.onChange, //onChange is obrigatory
    this.defaultIndex = 0, //Default index is opcional (0 for default start page)
  });

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

  int _currentPage = 0; //Var to control the page index

  //initState to initialize the default page
  @override
  void initState() {
    super.initState();
    _currentPage = widget.defaultIndex; //On first build, sets the default page
  }

  @override
  Widget build(BuildContext context) { //Build the navBar
    return Container( //Custom navBar
      decoration: BoxDecoration( //Creates a custom layout for the navBar
        boxShadow: [BoxShadow(  //Custom shadow for the navBar
          color: Colors.black, //Shadow color
          blurRadius: 8, //Shadow blurRadius
          spreadRadius: 0, //Shadow spreadRadius
        )],
        color: Color(0xff332F27), //Custom navBar color
        borderRadius: BorderRadius.only( //Custom rounded top border
            topLeft: Radius.circular(15), topRight: Radius.circular(15)
            ),
      ),
      child: Padding( //Space between navBar top and itens
        padding: const EdgeInsets.only(top: 16.0),
        child: Column( //Column to wrap the NavBar
          mainAxisSize: MainAxisSize.min, //Navbar height will only be enough to wrap the childrens
          children: [
            Row( //Row to wrap the itens
              children: [
                Expanded( //Space control
                  flex: 2, //Division proporsion
                  child: Row( //Row with first two itens
                    children: [
                      _buildNavbarItem( //Custom navBar Home item
                        Icons.home_outlined, //Icon
                        "Início", //Label
                        0, //Page index
                      ),
                       _buildNavbarItem( //Custom navBar Notifications item
                        Icons.star_border_rounded, //Icon
                        "Notificações", //Label
                        1, //Page index
                      ),
                    ],
                  ),
                ),
                Spacer(), //Fill the row gap between the itens
                Expanded( //Space control
                  flex: 2, //Division proporsion
                  child: Row( //Row with last two itens
                    children: [
                      _buildNavbarItem( //Custom navBar Profile item
                        Icons.person, //icon
                        "Perfil", //Label
                        2, //Page index
                      ),
                       _buildNavbarItem( //Custom navBar More item
                        Icons.menu, //Icon
                        "Mais", //Label
                        3, //Page index
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomDecorationMenuContainer() //Decorative rounded container
          ],
        ),
      ),
    );
  }

 //Function to create navBar itens, receiving it's parameters
  _buildNavbarItem(IconData icon, String text, int index){
    return Expanded( //Space control
      child: InkWell( //Makes the itens touchable
        onTap: (){ //Refresh the page, loading the refered index screen
          widget.onChange(index); //sets the Function received by the constructor
          setState(() { //Rebuild the page
            _currentPage = index; //Upadates the selected item
          });
        },
        splashColor: Colors.transparent, //removes splash color
              child: Column( //Column to wrap the Icon and text
          children: [
            Icon( //Icon
              icon, //Sets the icon received by the constructor
              color: index == _currentPage ? Colors.white : Color(0xff989898), //Sets the icon color based on the selected index
            ),
            Text( //Text
              text, //Sets the text received by the constructor
              softWrap: false, //Ensure that the text won't break line
              style: TextStyle( //Sets text style
                color: index == _currentPage ? Colors.white : Color(0xff989898), //Sets text color based on the selected index
              ),
            ),
          ],
        ),
      ),
    );
  }
}