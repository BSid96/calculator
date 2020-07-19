import 'package:calculator/components/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';

class Button extends StatelessWidget {
  final text;
  final colour;
  final size;
  Button({this.text, this.colour = Colors.white, this.size = 35.0});

  @override
  Widget build(BuildContext context) {
    Function f = () {};
    if (text == null) {
      f = () {
        Provider.of<Controller>(context, listen: false).delete();
      };
    } else if ([
      '.',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '+',
      '–',
      '÷',
      '×'
    ].contains(text)) {
      f = () {
        Provider.of<Controller>(context, listen: false).update(text);
      };
    } else if (text == "=") {
      f = () {
        Provider.of<Controller>(context, listen: false).equals();
      };
    }

    return Expanded(
      child: FlatButton(
        onPressed: f,
        onLongPress: () {
          text == null
              ? Provider.of<Controller>(context, listen: false).clear()
              : () {};
        },
        child: text == null
            ? Icon(
                OMIcons.backspace,
                color: colour,
              )
            : Text(
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
