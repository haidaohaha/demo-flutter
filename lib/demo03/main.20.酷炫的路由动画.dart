import 'package:flutter/material.dart';
import './demo03/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dome03',
      theme: new ThemeData(primaryColor: Colors.purpleAccent),
      home: FirstPage(),
    );
  }
}
