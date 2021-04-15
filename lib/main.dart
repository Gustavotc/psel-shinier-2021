import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/routes.dart';

void main() {
  runApp(MaterialApp(
    title: "Processo Seletivo",
    initialRoute: '/',
    onGenerateRoute: Routes.generateRoutes,
    debugShowCheckedModeBanner: false,
  ));
}
