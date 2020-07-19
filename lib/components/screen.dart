import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'text_controller.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String angle = 'DEG';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
        color: Color(0xFF2C3033),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      if (angle == 'RAD') {
                        angle = 'DEG';
                      } else {
                        angle = 'RAD';
                      }
                      setState(() {});
                    },
                    child: Text(
                      angle,
                      style: TextStyle(
                        color: Color(0XFF9A9FA5),
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                      icon: Icon(
                        Icons.more_vert,
                        color: Color(0XFF9A9FA5),
                      ),
                      color: Color(0xFF3C4043),
                      itemBuilder: (BuildContext context) {
                        return [
                          'History',
                          'Choose theme',
                          'Send feedback',
                          'Help'
                        ]
                            .map((e) => PopupMenuItem<String>(child: Text(e)))
                            .toList();
                      })
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SizedBox.expand(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: AutoSizeTextField(
                          controller: TextEditingController(
                              text: Provider.of<Controller>(context).text),
                          decoration: InputDecoration(border: InputBorder.none),
                          style: TextStyle(
                            fontSize: 70.0,
                          ),
                          textAlign: TextAlign.end,
                          readOnly: true,
                          showCursor: true,
                          autofocus: true,
                          maxLines: 1,
                          minFontSize: 50.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.473 * width, vertical: 11.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(50.0))),
                ),
              ),
//              child: Divider(
//                indent: 0.47 * width,
//                endIndent: 0.47 * width,
//                color: Colors.white,
//                thickness: 4.0,
//              ),
            ),
          ],
        ));
  }
}
