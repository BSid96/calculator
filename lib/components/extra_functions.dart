import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

class ExtraFunctions extends StatelessWidget {
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
                Button(text: 'INV', size: size),
                Button(text: 'RAD', size: size),
                Button(text: 'sin', size: size),
                Button(text: "cos", size: size),
                Button(text: 'tan', size: size),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Button(text: '%', size: size),
                Button(text: 'ln', size: size),
                Button(text: 'log', size: size),
                Button(text: '√', size: size),
                Button(text: '^', size: size),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Button(text: 'π', size: size),
                Button(text: 'e', size: size),
                Button(text: '(', size: size),
                Button(text: ')', size: size),
                Button(text: '!', size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
