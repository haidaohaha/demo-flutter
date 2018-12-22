import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          '技术才是程序员唯一的信仰！',
          style:new TextStyle(
              color: Color.fromARGB(255, 255, 0, 100), fontFamily: "Oswald"),
        )),
        body: Center(
            child: Container(
                child: new Text('技术才是你，唯一的信仰！',
                    style: TextStyle(
                      fontSize: 25,
                    )),
                alignment: Alignment.topLeft,
                width: 400.0,
                height: 300.0,
                // color: Colors.lightBlueAccent,
                // padding: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.fromLTRB(10.0,30.0,40.0,50),
                margin: const EdgeInsets.all(20),
                decoration: new BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.redAccent,Colors.purple,Colors.lightBlueAccent]
                  ),
                  border: Border.all(width: 5.0,color:Colors.yellow),
                ), 
            )),
      ),
    );
  }
}
