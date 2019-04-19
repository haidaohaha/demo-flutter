import 'package:flutter/material.dart';
import './demo10/custom_clipper_demo.dart';

void main() => runApp(MyApp());  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Text('加油！'),
      home: CustomClipperDemo(),
    );
  }
}

