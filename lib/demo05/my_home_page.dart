import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// 混入 AutomaticKeepAliveClientMixin ， 这是保持状态的 关键
// 然后重写 wantKeepAlive 的值为 true 。
class _MyHomePageState extends State<MyHomePage>
    with AutomaticKeepAliveClientMixin {
  int _counter = 0;
// 重写 keepAlive 为 true , 就是可以又记忆的功能了。
  @override
  bool get wantKeepAlive => true;
  // 声明一个内部的方法，用来点击按钮后增加数量
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下加 1 ， 点一下加 1 ：'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      // 增加一个悬浮按钮 ， 点击时触发 _incrementCounter 方法
      // 触发的方法，不想 js 需要 this 指向
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
