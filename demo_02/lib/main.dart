import 'package:flutter/material.dart';
import './BottomAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      //自定义主题样本
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: BottomAppBarDome(),
    );
  }
}
