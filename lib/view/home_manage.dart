import 'package:calculator_app/model/buttons_list.dart';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

abstract class HomeManage<T extends StatefulWidget> extends State<T> {
  final ButtonList buttonList = ButtonList();
  var userQuestion = '';
  var userAnswer = '';
  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void evaluateExpression() {
    String finalQuestion = userQuestion.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      userAnswer = eval.toString();
    });
  }
}
