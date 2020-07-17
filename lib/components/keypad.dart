import 'package:flutter/material.dart';
import 'package:calculator/buttons.dart';

class Keypad extends StatelessWidget {
  final button = Buttons();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF202125),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button.botton(text: "7"),
                button.botton(text: "8"),
                button.botton(text: "9"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button.botton(text: "4"),
                button.botton(text: "5"),
                button.botton(text: "6"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button.botton(text: "1"),
                button.botton(text: "2"),
                button.botton(text: "3"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button.botton(text: "0"),
                button.botton(text: "."),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
