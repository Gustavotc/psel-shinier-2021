import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

  Size size = MediaQuery.of(context).size; //Screen size variable

    return Stack(children: <Widget>[
      Container(
        height: 215,
        width: size.width,
        color: Color(0xffC4C4C4),
        //child: Image.asset(""),
      ), 
      Positioned(
        bottom: 16,
        right: 16,
        child: InkWell(
          onTap: (){/*To-Do onTap */},
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(Icons.edit_outlined, size: 20,),
          ),
          ),
      ),
     ],
    );
  }
}