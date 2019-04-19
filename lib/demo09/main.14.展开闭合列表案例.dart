import 'package:flutter/material.dart';
import './demo09/expansion_panel_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '展开闭合列表案例',
        theme: ThemeData.dark(),
        home: ExpansionPanelListDemo());
  }
}
