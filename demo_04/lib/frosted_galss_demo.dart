import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0;

class FrostedGlassDemo extends StatelessWidget {
  const FrostedGlassDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                'https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=00af05b334f33a87816d061af65d1018/8d5494eef01f3a29f863534d9725bc315d607c8e.jpg'),
          ), //约束性盒子，添加额外的约束条件在child上
          Center(
              child: ClipRect(
                  child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Opacity(
              opacity: 0.5,
              child: Container(
                width: 500.0,
                height: 700.0,
                decoration: BoxDecoration(color: Colors.grey.shade200), //盒子修饰器,
                child: Center(
                    child: Text(
                  'Crawford',
                  style: Theme.of(context).textTheme.display1,
                )),
              ),
            ),
          ) //背景过滤器,
                  ) //可裁切的矩形,
              )
        ],
      ),
    );
  }
}
