import 'package:calculator/components/text_controller.dart';
import 'package:flutter/material.dart';
import 'components/basic_functions.dart';
import 'components/extra_functions.dart';
import 'components/keypad.dart';
import 'components/screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xFF2D3033)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Color(0xFF89B3F6),
        fontFamily: "Product_Sans",
      ),
      home: Scaffold(
        body: SafeArea(
          child: ChangeNotifierProvider(
            create: (_) => Controller(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Screen(),
                  flex: 50,
                ),
                Expanded(
                  child: ExtraFunctions(),
                  flex: 35,
                ),
                Expanded(
                  flex: 65,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
