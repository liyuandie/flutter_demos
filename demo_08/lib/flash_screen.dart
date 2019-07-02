import 'package:flutter/material.dart';
import './expansion_panel_list.dart';

class FlashScreen extends StatefulWidget {
  FlashScreen({Key key}) : super(key: key);

  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    /*动画事件监听器，
    它可以监听到动画的执行状态，
    我们这里只监听动画是否结束，
    如果结束则执行页面跳转动作。 */
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => ExpansionPanelListDemo()),
            (route) => route == null);
      }
      ;
    });

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
          'https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=bc7f0508dea20cf45990f8df460b4b0c/9d82d158ccbf6c8165f7ae67b23eb13532fa4079.jpg',
          scale: 2.0,
          fit: BoxFit.cover),
    );
  }
}
