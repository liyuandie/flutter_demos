import 'package:flutter/material.dart';
import './custom_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage', style: TextStyle(fontSize: 36.0)),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next, color: Colors.white, size: 64.0),
          onPressed: () {
            Navigator.push(context, SlideTransitionCustomRoute(SecondPage()));
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
        elevation: 0.0,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_before, color: Colors.white, size: 64.0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
