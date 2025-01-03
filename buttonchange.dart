import 'package:flutter/material.dart';

class ButtonTouchEffect extends StatefulWidget {
  @override
  _ButtonTouchEffectState createState() => _ButtonTouchEffectState();
}

class _ButtonTouchEffectState extends State<ButtonTouchEffect> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Touch Effect Button'),
      ),
      body: Center(
        child: GestureDetector(
          onTapDown: (_) {
            setState(() {
              _isPressed = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              _isPressed = false;
            });
          },
          onTapCancel: () {
            setState(() {
              _isPressed = false;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: _isPressed ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Touch Me',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}