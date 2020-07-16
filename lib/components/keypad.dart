import 'package:flutter/material.dart';

class Keypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 20.0),
      color: Color(0xFF202125),
      child: GridView.count(
        crossAxisCount: 3,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
          Container(
            child: Center(
                child: Text(
              '1',
              style: TextStyle(fontSize: 50.0),
            )),
          ),
        ],
      ),
    );
  }
}
