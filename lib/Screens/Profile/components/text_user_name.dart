import 'package:flutter/material.dart';

class TextUserName extends StatelessWidget {

  final String name;

  const TextUserName({
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
    );
  }
}
