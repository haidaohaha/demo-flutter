import 'package:flutter/material.dart';
import './demo02/bottom_app_bar_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '园',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomAppBarDemo(),
    );
  }
}
