import 'package:flutter/material.dart';
import './demo04/frosted_glass_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrostedGlassDemo',
      theme: new ThemeData(primaryColor: Colors.lightBlue),
      home: FrostedGlassDemo(),
    );
  }
}
