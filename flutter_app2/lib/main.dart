// import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Widget Dome',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('水平方向布局'),
//           ),
//           body: new Row(
//             children: <Widget>[
//               Expanded(
//                 child: RaisedButton(
//                   onPressed: () {},
//                   color: Colors.redAccent,
//                   child: Text('red btn'),
//                 ),
//               ),

//               Expanded(
//                 child: RaisedButton(
//                   onPressed: () {},
//                   color: Colors.greenAccent,
//                   child: Text('green btn'),
//                 ),
//               ),
//               Expanded(
//                 child: RaisedButton(
//                   onPressed: () {},
//                   color: Colors.orange,
//                   child: Text('orange btn'),
//                 ),
//               )
//               // RaisedButton(
//               //   onPressed: () {},
//               //   color: Colors.lightGreen,
//               //   child: Text('green btn'),
//               // ),
//               // RaisedButton(
//               //   onPressed: () {},
//               //   color: Colors.grey,
//               //   child: Text('grey btn'),
//               // ),
//               // RaisedButton(
//               //   onPressed: () {},
//               //   color: Colors.deepOrange,
//               //   child: Text('orange btn'),
//               // ),
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var stack = new Stack(
    //   alignment: const FractionalOffset(0.5, 0.8),
    //   children: <Widget>[
    //     new CircleAvatar(
    //       backgroundImage: new NetworkImage(
    //           'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a9e671b9a551f3dedcb2bf64a4eff0ec/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg'),
    //       radius: 100.0,
    //     ),
    //     new Positioned(
    //       top: 10.0,
    //       left: 10.0,
    //       child: Text('crawford'),
    //     ),
    //     new Positioned(
    //       top: 50.0,
    //       left: 10.0,
    //       child: Text('吴彦祖'),
    //     )
    //   ],
    // );
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              '四川省成都市武侯区',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('13166667777'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.orange,
            ),
          ),
          new Divider(),
          ListTile(
            title: Text(
              '四川省汉源县',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('13188867777'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.orange,
            ),
          ),
          new Divider(),
          ListTile(
            title: Text(
              '成都市武侯区高升桥北路16号',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('13896666777'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
    return MaterialApp(
        title: 'Widget Dome',
        home: Scaffold(
            appBar: AppBar(
              title: Text('垂直方向布局'),
            ),
            body: Center(
              child: card,
            )));
  }
}
