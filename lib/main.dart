import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title:Text('好冷我是哈哈')
        // ),
        body: Center(
          child: Text(
            '我很喜欢前端，生存技能，目前属于技能强化阶段，很是开心，因为预计工资会再次的增加哈哈哈',
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 255, 100, 100),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double
            ),
          ),
        ),
      ),
    );
  }
}
