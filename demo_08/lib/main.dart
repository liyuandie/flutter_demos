import 'package:demo_08/expansion_tile_demo.dart';
import 'package:demo_08/flash_screen.dart';
import 'package:flutter/material.dart';
import './expansion_panel_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData.dark(), home: FlashScreen());
  }
}
