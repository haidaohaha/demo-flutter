import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView widget',
        home: Scaffold(
            appBar: new AppBar(
              title: new Text('垂直方向Column'),
            ),
            body: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('我在学习'),
                Text('移动框架'),
                Text('Flutter'),
                Text('还不知道Flutter 是不是移动框架？'),
                Text('开发跨台手机App的工具包'),
              ],
            )));
  }
}
