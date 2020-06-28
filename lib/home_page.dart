import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _calc = 1;
  
  void _clicou_normal_press(){
    setState(() {
      _calc *= 2;
    });
  }

  void _clicou_long_press() {
    setState(() {
      _calc = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(),
        title: Text(
          "My First Flutter app",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: GestureDetector(
        child: Center(
          child: Text(
            'calc: $_calc',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        onTap: _clicou_normal_press,
        onLongPress: _clicou_long_press,
      ),
    );
  }
}
