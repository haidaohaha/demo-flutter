import 'package:flutter/material.dart';
import './demo05/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'keepAliveDemo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

// with 是 dart 的关键字，意为 是混入的意思，
// 就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类，
// 避免多重继承导致的问题。

// SingleTickerProviderStateMixin 主要是我们初始化 TabController 时，
// 需要用到 vsync , 垂直属性，然后传递 this 

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  // 重新被释放的方法，只释放 tabController
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          // Text('11111'),
          // Text('22222'),
          // Text('33333'),
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
