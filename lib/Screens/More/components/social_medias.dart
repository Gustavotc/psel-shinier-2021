import 'package:flutter/material.dart';

import 'social_icons_icons.dart';

//Class to build Social Media Icons row
class SocialMedias extends StatelessWidget {
  const SocialMedias({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Fique por dentro das novidades", style: TextStyle(color: Color(0xff989898)),),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialItem(SocialIcons.linkedin),
            _buildSocialItem(SocialIcons.instagram),
            _buildSocialItem(SocialIcons.facebook),
            _buildSocialItem(SocialIcons.twitter),
          ],
        ),
      ],
    );
  }

  //Function to build Social Media IconButtons
  _buildSocialItem(IconData icon, {Function onPressed}) {
    final Function _onPressed = onPressed;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: _onPressed,
        icon: Icon(icon),
        color: Color(0xff989898),
        iconSize: 40,
      ),
    );
  }
}