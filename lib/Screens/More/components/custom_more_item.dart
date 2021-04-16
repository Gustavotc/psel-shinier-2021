import 'package:flutter/material.dart';

//Class to create the More Screen options items
class CustomMoreItem extends StatelessWidget {
  final String text;
  final Function onTap;

  //Constructor to receive the parameters
  const CustomMoreItem({
    @required this.text,
    @required this.onTap(),
  });

  @override
  Widget build(BuildContext context) {
    return Column( //Column to wrap everything
      children: [
        InkWell( //Makes the widget touchable
          onTap: onTap, //sets the onTap function received by the constructor
          highlightColor: Colors.transparent, //removes the color highlight when pressed
          splashColor: Colors.transparent, //removes the splash color when pressed
          child: Row( //Row to wrap Text and Icon
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Spacer(), //Spacer to fill the row
              Icon(Icons.arrow_forward_ios_sharp),
            ],
          ),
        ),
        Divider(thickness: 1.5, height: 40), //Items divider
      ],
    );
  }
}
