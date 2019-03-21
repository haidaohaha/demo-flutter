import 'package:flutter/material.dart';

// 继承动态组件
class WarpDemo extends StatefulWidget {
  @override
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {
// 声明一个 list 数组
  List<Widget> list;

  @override
// 初始化状态,给 list 添加值, 此时调用自定义方法 buildAppButton
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height / 2,
            color: Colors.grey,
            // 流式布局
            child: Wrap(
              children: list,
              spacing: 15.0, // 间距
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
// 返回一个手势 Widget , 只用于显示事件
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}
