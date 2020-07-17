import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

class ExtraFunctions extends StatelessWidget {
  final button = Buttons();
  final size = 27.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Color(0xFF174FA6),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                button.botton(text: 'INV', size: size),
                button.botton(text: 'RAD', size: size),
                button.botton(text: 'sin', size: size),
                button.botton(text: "cos", size: size),
                button.botton(text: 'tan', size: size),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                button.botton(text: '%', size: size),
                button.botton(text: 'ln', size: size),
                button.botton(text: 'log', size: size),
                button.botton(text: '√', size: size),
                button.botton(text: '^', size: size),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                button.botton(text: 'π', size: size),
                button.botton(text: 'e', size: size),
                button.botton(text: '(', size: size),
                button.botton(text: ')', size: size),
                button.botton(text: '!', size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
