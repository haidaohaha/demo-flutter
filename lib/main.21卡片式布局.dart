import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text(
              '河南省濮阳市百姓办公楼',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: new Text('小米 15676886876'),
            leading: new Icon(Icons.account_circle),
          ),
          new Divider(),
          new ListTile(
            title: new Text(
              '浙江杭州市百姓办公楼',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: new Text('小花 15676886876'),
            leading: new Icon(Icons.account_circle),
          ),
          new Divider(),
          new ListTile(
            title: new Text(
              '安徽省阜阳市百姓办公楼',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: new Text('小虎 15676886876'),
            leading: new Icon(Icons.account_circle),
          ),
          new Divider(),
          new ListTile(
            title: new Text(
              '安徽省蚌埠市百姓办公楼',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: new Text('小木 15676886876'),
            leading: new Icon(Icons.account_circle),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('层叠布局'),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}
