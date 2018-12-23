import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: new List<String>.generate(1000, (i) => 'item $i')));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '动态列表',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('技术即信仰！'),
        ),
        body: MyWidget2(),
      ),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        crossAxisSpacing: 2,
      ),
      children: <Widget>[
        new Image.network(
            'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
            fit: BoxFit.cover),
      ],
    );
  }
}

class MyWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 2,
      childAspectRatio: 0.75,
      children: <Widget>[
        new Image.network(
            'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
            fit: BoxFit.cover),
        new Image.network(
            'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
            fit: BoxFit.cover),
      ],
    );
  }
}
