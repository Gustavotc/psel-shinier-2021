import 'package:flutter/material.dart';

//Class to create a custom menu item
class CustomBottomMenuItem extends StatelessWidget {
  final bool isSelected;
  final String text;
  final IconData icon;
  final Function onTap;
  //Constructor to receive the parameters
  const CustomBottomMenuItem({this.isSelected, this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          onTap();
        },
        splashColor: Colors.transparent,
              child: Column(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Color(0xff989898),
            ),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xff989898),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
