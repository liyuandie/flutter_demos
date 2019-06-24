import 'package:flutter/material.dart';
import './BottomNavWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部导航',
      theme: ThemeData.light(),
      home: BottomNavWidget(),
    );
  }
}
