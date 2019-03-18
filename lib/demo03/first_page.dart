import 'package:flutter/material.dart';
import './custom_router.dart';

class FirstPage extends StatelessWidget {
  final Widget child;

  FirstPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text('FirstPage', style: TextStyle(fontSize: 36.0)),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next, color: Colors.white, size: 64.0),
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return SecondPage();
            // }));
            Navigator.of(context).push(CustomRouter(SecondPage()));  // 自定义动画
            
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('SecondPage', style: TextStyle(fontSize: 36.0)),
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
