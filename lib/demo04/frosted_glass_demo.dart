import 'package:flutter/material.dart';
import 'dart:ui'; // ImageFilter

class FrostedGlassDemo extends StatelessWidget {
  final Widget child;

  FrostedGlassDemo({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // 重叠的 Stack Widget 实现重叠
        children: <Widget>[
          ConstrainedBox(
            // 约束性盒子组件，添加额外的限制条件到 child 上
            constraints: const BoxConstraints.expand(), // 限制条件 可扩展
            child: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg'),
          ),
          Center(
            child: ClipRect(
              // 裁切长方形
              child: BackdropFilter(
                // 背景过滤器
                filter: ImageFilter.blur(
                    sigmaX: 5.0, sigmaY: 5.0), // 图片模糊过滤 横向竖向都设置 5.0
                child: Opacity(
                  // 透明控件
                  opacity: 0.3,
                  child: Container(
                    // 容器组件
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(
                        color:
                            Colors.yellowAccent.shade200), //盒子装饰器，进行装饰，设置颜色为灰色
                    child: Center(
                      child: Text('haidao',
                          //设置比较酷炫的字体
                          style: Theme.of(context).textTheme.display4),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
