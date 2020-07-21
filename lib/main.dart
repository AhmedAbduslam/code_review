import './widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'main_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0XFF54D3C2),
      ),
      home: Scaffold(
        appBar: MyAppBar().appBar,
        body: MainApp(),
      ),
    );
  }
}
