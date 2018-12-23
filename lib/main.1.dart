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
        body:new Center(
          child: new Container(
            child:  MyList(),
            // width:300.0,
            height:200.0,
            // padding: new EdgeInsets.all(10),
            // color: Colors.purple,
          ),
        // body: MyList()
      ),
      )
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  width: 180.0,
                  color: Colors.red,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.orange,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.yellow,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.blue,
                ),
              ],
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
