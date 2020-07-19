import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  String text = "";

  void update(String newText) {
    text += newText;
    notifyListeners();
  }

  void delete() {
    List<String> listText = text.split('');
    text = listText.sublist(0, listText.length - 1).join();
    notifyListeners();
  }

  void clear() {
    text = '';
    notifyListeners();
  }

  void equals() {
    List<String> listText = text.split('');
    for (int i = 0; i < listText.length; i++) {
      if (listText[i] == '÷') {
        listText[i] = '/';
      } else if (listText[i] == '×') {
        listText[i] = '*';
      } else if (listText[i] == '–') {
        listText[i] = '-';
      }
    }
    text = listText.join();
    var expression = Expression.parse(text);
    final evaluator = const ExpressionEvaluator();
    var r = evaluator.eval(expression, {});
    text = r.toString();
    print(text);
    notifyListeners();
  }
}
