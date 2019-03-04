import 'package:flutter/material.dart';
import 'package:leitura1/src/login/LoginWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        accentColor: Color(0xFFFFF65E5C)
      ),

      home: LoginWidget(),
    );
  }
}






