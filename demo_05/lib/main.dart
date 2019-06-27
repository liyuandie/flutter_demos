import 'package:demo_05/keep_alive_demo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  KeepAliveDemo({Key key}) : super(key: key);

  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('keep Alive Demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.wallpaper),
            ),
            Tab(
              icon: Icon(Icons.supervised_user_circle),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
