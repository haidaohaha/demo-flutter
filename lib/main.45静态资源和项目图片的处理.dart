import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('images/haidaohaha.jpg'));
    // return MaterialApp(
    //     title: 'ListView Widget',
    //     home: Scaffold(
    //         appBar: new AppBar(
    //           title: new Text('静态图片'),
    //         ),
    //         body: new CircleAvatar(
    //           child: Image.asset('images/haidaohaha.jpg'),
    //           radius: 100.0,
    //         )));
  }
}

// 总结：
// 注意： pubspec.yaml 文件的 路径；
// 以及 images 文件夹，位置
