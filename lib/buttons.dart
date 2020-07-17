import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Buttons {
  Expanded botton(
      {String text, Color colour = Colors.white, double size = 35.0}) {
    if (text == null) {
      return Expanded(
        child: FlatButton(
          onPressed: () {},
          child: Icon(
            OMIcons.backspace,
            color: colour,
          ),
          padding: EdgeInsets.all(0.0),
        ),
      );
    }
    return Expanded(
      child: FlatButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w100,
            color: colour,
          ),
        ),
        padding: EdgeInsets.all(0.0),
      ),
    );
  }
}
