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
        new Container(
          decoration: new BoxDecoration(color: Colors.lightBlue[500]),
          padding: EdgeInsets.all(5.0),
          child: new Text('Flutter'),
        )
      ],
    );

    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('观察stack'),
        ),
        body: Center(child: stack),
      ),
    );
  }
}
