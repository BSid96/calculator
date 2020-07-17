import 'dart:ui';

import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String angle = 'DEG';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15.0),
        color: Color(0xFF2C3033),
        child: Column(
          children: <Widget>[
            Expanded(
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
              child: TextField(
                decoration:
                    InputDecoration(contentPadding: EdgeInsets.all(50.0)),
                style: TextStyle(
                  fontSize: 70.0,
                ),
                textAlign: TextAlign.end,
//                readOnly: true,
                showCursor: true,
                autofocus: true,
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ));
  }
}
