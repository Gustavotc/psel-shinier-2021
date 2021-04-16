import 'package:flutter/material.dart';

import 'components/body.dart';

//Class to create the More Screen
class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MoreBody()),
    );
  }
}