import 'package:flutter/material.dart';
import 'components/basic_functions.dart';
import 'components/extra_functions.dart';
import 'components/keypad.dart';
import 'components/screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF2D3033),
      ),
    );
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Screen(),
                flex: 34,
              ),
              Expanded(
                child: ExtraFunctions(),
                flex: 23,
              ),
              Expanded(
                flex: 43,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Keypad(),
                      flex: 65,
                    ),
                    VerticalDivider(
                      thickness: 1.0,
                      width: 1.0,
                    ),
                    Expanded(
                      child: BasicFunctions(),
                      flex: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
