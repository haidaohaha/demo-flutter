import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Veiw',
      home: Scaffold(
        appBar: AppBar(
          title: new Text(
            '技术是程序员唯一的信仰！',
            style: TextStyle(
              color: Colors.purple,
            ),
          ),
        ),
        // body:new Center(
        //   child: new Container(
        //     child: new Text('hahaha'),
        //     width:300.0,
        //     height:200.0,
        //     padding: new EdgeInsets.all(10),
        //     color: Colors.purple,
        //   ),
        body: new ListView(
          children: <Widget>[
            new Image.network(
              'https://s1.hdslb.com/bfs/seed/jinkela/header/images/logo_blue.png',
              width: 100.0,
              height: 30,
            ),
            new Image.network(
              'http://jspang.com/static/upload/20181030/cETrXVG2NPDHD_3T0GMzsnmc.png',
              height: 30,
            ),
            new Image.network(
              'http://jspang.com/static/myimg/WechatIMG12.jpeg',
              height: 30,
              fit: BoxFit.fitWidth,
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('我'),
            ),
            new ListTile(
              leading: new Icon(Icons.backspace),
              title: new Text('在'),
            ),
            new ListTile(
              leading: new Icon(Icons.stay_current_landscape),
              title: new Text('学'),
            ),
            new ListTile(
              leading: new Icon(Icons.subject),
              title: new Text('falutter'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//             title: Text(
//             '技术才是程序员唯一的信仰！',
//             style:new TextStyle(
//                 color: Colors.white, fontFamily: "Oswald"),
//             )
//         ),
//         body: Center(
//             child: Container(
//                 child: new Image.network('https://s1.hdslb.com/bfs/seed/jinkela/header/images/logo_blue.png',
//                     // fit: BoxFit.cover,
//                     // fit: BoxFit.fitWidth,
//                     // fit: BoxFit.contain,
//                     // fit: BoxFit.fill,
//                     color: Colors.red, //背景色
//                     // colorBlendMode: BlendMode.screen, // 混合模式
//                     // repeat: ImageRepeat.repeat,
//                     // repeat: ImageRepeat.repeatX,
//                     repeat: ImageRepeat.repeatY,
//                 ),
//                 width:300.0,
//                 height: 200.0,
//                 color: Colors.purple[50],
//             ),
//         ),
//       ),
//     );
//   }
// }
