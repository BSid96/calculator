import 'package:flutter/material.dart';
import 'package:calculator/buttons.dart';

class BasicFunctions extends StatelessWidget {
  final buttons = Buttons();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF202125),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                buttons.botton(text: "÷", colour: Color(0xFF89B3F6)),
                buttons.botton(
                    text: null, colour: Color(0xFF89B3F6)), //backspace
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                buttons.botton(text: '×', colour: Color(0xFF89B3F6)),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                buttons.botton(text: '–', colour: Color(0xFF89B3F6)),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                buttons.botton(text: '+', colour: Color(0xFF89B3F6)),
                buttons.botton(text: '=', colour: Color(0xFF89B3F6)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
