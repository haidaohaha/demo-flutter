import 'package:flutter/material.dart';

import './pages/home_screen.dart';
import './pages/email_screen.dart';
import './pages/pages_screen.dart';
import './pages/airplay_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomnavigationcolor = Colors.redAccent;

  int _currentIndex = 0;

  List<Widget> list = List();
  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex], // body 区域
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _bottomnavigationcolor,
                ),
                title: Text('Home',
                    style: TextStyle(color: _bottomnavigationcolor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _bottomnavigationcolor,
                ),
                title: Text('Email',
                    style: TextStyle(color: _bottomnavigationcolor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _bottomnavigationcolor,
                ),
                title: Text('Pages',
                    style: TextStyle(color: _bottomnavigationcolor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _bottomnavigationcolor,
                ),
                title: Text('AirPlay',
                    style: TextStyle(color: _bottomnavigationcolor))),
          ],
          currentIndex: _currentIndex, // 控制哪一个 BarItem 高亮/动画
          onTap: (int index) {
            // 触发事件
            setState(() {
              // 设置状态
              _currentIndex = index;
            });
          },
          // type: BottomNavigationBarType.fixed // 控制底部导航栏点击动画效果
          ),
    );
  }
}
