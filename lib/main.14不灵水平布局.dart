import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'ListView widget',
      home:Scaffold(
        appBar: new AppBar(
          title: new Text('那份关于,如何学习flutter 的教程很好',
                style: TextStyle(color: Colors.red),  
          ),          
        ),
        body: new Row(
          children: <Widget>[
            // new RaisedButton(
            //   onPressed: (){},
            //   color:Colors.red,
            //   child: new Text('红色按钮'),
            // ),
            new RaisedButton(
              onPressed: (){},
              color:Colors.blue,
              child: new Text('蓝色按钮'),
            ),
            new RaisedButton(
              onPressed: (){},
              color:Colors.yellow,
              child: new ListTile(
                leading: new Icon(Icons.access_alarm),
                title:new Text('黄色按钮'),
              ),
            ),
                          new RaisedButton(
                onPressed: (){
                },
                color:Colors.redAccent,
                child:new Text('红色按钮')
              ),
              // new RaisedButton(
              //   onPressed: (){
              //   },
              //   color:Colors.orangeAccent,
              //   child: new Text('黄色按钮'),
              // ),  
              new RaisedButton(
                onPressed: (){
                },
                color:Colors.pinkAccent,
                child:new Text('粉色按钮')
              )
          ],
        ),
      )

    );
  }
}