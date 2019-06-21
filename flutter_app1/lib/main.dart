// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Hello Flutter',
//         home: Scaffold(
//           appBar: AppBar(title: Text('welcome to Flutter')),
//           body: Center(
//             // child: Text(
//             //   'hello 吴彦祖，看的没看上打开稍等年审你说的莫斯科的马克思的马克思你打开说的是，的是的是的',
//             //   textAlign: TextAlign.center,
//             //   maxLines: 1,
//             //   overflow: TextOverflow.ellipsis,
//             //   style: TextStyle(
//             //       fontSize: 25.0,
//             //       color: Color.fromARGB(255, 255, 125, 125),
//             //       decoration: TextDecoration.underline,
//             //       decorationStyle: TextDecorationStyle.solid),
//             // ),
//             // child: Container(
//             //   child: new Text(
//             //     'hello 吴彦祖',
//             //     style: TextStyle(fontSize: 20.0),
//             //   ),
//             //   alignment: Alignment.topLeft,
//             //   width: 500.0,
//             //   height: 400.0,
//             //   // color: Colors.lightBlue,
//             //   padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 20.0),
//             //   margin: const EdgeInsets.all(20.0),
//             //   decoration: new BoxDecoration(
//             //       gradient: const LinearGradient(
//             //           colors: [Colors.lightBlue, Colors.green, Colors.purple]),
//             //       border: Border.all(width: 5.0, color: Colors.red)),
//             // ),
//             child: Container(
//               child: new Image.network(
//                 'https://i0.hdslb.com/bfs/face/c81969907b5c286b50d02400e7d54b13595f09bb.jpg@68w_68h.webp',
//                 color: Colors.green,
//                 colorBlendMode: BlendMode.softLight,
//                 repeat: ImageRepeat.repeatY,
//               ),
//               width: 300.0,
//               height: 200.0,
//               color: Colors.lightBlue,
//             ),
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text('ListView Widget')),
            body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                childAspectRatio: 0.7,
              ),
              children: <Widget>[
                Image.network(
                  'https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=00af05b334f33a87816d061af65d1018/8d5494eef01f3a29f863534d9725bc315d607c8e.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=2581bca42f3fb80e13d167d706d02ffb/4034970a304e251fb1a2546da986c9177e3e53c9.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=aecf53eb9622720e64cee4fa4bca0a3a/4a36acaf2edda3ccdbe14ea90fe93901213f9236.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://ss1.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=ad628627aacc7cd9e52d32d909032104/32fa828ba61ea8d3fcd2e9ce9e0a304e241f5803.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a9e671b9a551f3dedcb2bf64a4eff0ec/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=907f6e689ddda144c5096ab282b6d009/dc54564e9258d1092f7663c9db58ccbf6c814d30.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=b5e4c905865494ee982209191df4e0e1/c2cec3fdfc03924590b2a9b58d94a4c27d1e2500.jpg',
                  fit: BoxFit.cover,
                )
              ],
            )));
  }
}

// class MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         Container(
//           width: 190.0,
//           color: Colors.lightBlue,
//         ),
//         Container(
//           width: 190.0,
//           color: Colors.yellow,
//         ),
//         Container(
//           width: 190.0,
//           color: Colors.deepOrange,
//         ),
//         Container(
//           width: 190.0,
//           color: Colors.purple,
//         ),
//       ],
//     );
//   }
// }
