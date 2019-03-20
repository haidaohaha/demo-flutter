import 'package:flutter/material.dart';
import './demo06/search_bar_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '一个不简单的搜索条',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: SearchBarDemo(),
    );
  }
}