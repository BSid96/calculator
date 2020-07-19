import 'package:flutter/material.dart';
import 'package:calculator/buttons.dart';

class BasicFunctions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF202125),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Button(text: "÷", colour: Color(0xFF89B3F6)),
                Button(text: null, colour: Color(0xFF89B3F6)), //backspace
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Button(text: '×', colour: Color(0xFF89B3F6)),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Button(text: '–', colour: Color(0xFF89B3F6)),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Button(text: '+', colour: Color(0xFF89B3F6)),
                Button(text: '=', colour: Color(0xFF89B3F6)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
