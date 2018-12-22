import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
            title: Text(
            '技术才是程序员唯一的信仰！',
            style:new TextStyle(
                color: Colors.white, fontFamily: "Oswald"),
            )
        ),
        body: Center(
            child: Container(
                child: new Image.network('https://s1.hdslb.com/bfs/seed/jinkela/header/images/logo_blue.png',
                    // fit: BoxFit.cover,
                    // fit: BoxFit.fitWidth,
                    // fit: BoxFit.contain,
                    // fit: BoxFit.fill,
                    color: Colors.red, //背景色
                    // colorBlendMode: BlendMode.screen, // 混合模式
                    // repeat: ImageRepeat.repeat,
                    // repeat: ImageRepeat.repeatX,
                    repeat: ImageRepeat.repeatY,
                ), 
                width:300.0,
                height: 200.0,
                color: Colors.purple[50],
            ),
        ),
      ),
    );
  }
}
