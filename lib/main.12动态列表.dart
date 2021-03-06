import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items:new List<String>.generate(1000, (i)=>'item $i')
));

class MyApp extends StatelessWidget {

  final List<String> items ;
  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '动态列表',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('技术即信仰！'),
        ),
        body:new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        )
      ),
    );
  }
}