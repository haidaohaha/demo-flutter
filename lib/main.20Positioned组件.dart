import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545931376716&di=b6e804eae18b408e43e16d29f703abf4&imgtype=0&src=http%3A%2F%2Fimg.mukewang.com%2F5c18cf540001ac8206000338.jpg'),
          radius: 100.0,
        ),
        new Positioned(top: 10.0, left: 10.0, child: new Text('哈哈上面')),
        new Positioned(bottom: 10.0, right: 10.0, child: new Text('哈哈下面'))
      ],
    );

    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('层叠布局'),
        ),
        body: Center(child: stack),
      ),
    );
  }
}
