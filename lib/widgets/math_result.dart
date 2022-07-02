import 'package:calculadora/controllers/calcuator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'line_separator.dart';

class MathResults extends StatelessWidget {
   MathResults({Key? key}) : super(key: key);

  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        SubResult(text: '${calculatorCtrl.firstNumber}'),
        SubResult(text: '${calculatorCtrl.operation}'),
        SubResult(text: '${calculatorCtrl.secondNumber}'),
        const LineSeparator(),
        MainResultText(text: '${calculatorCtrl.mathResult}'),
      ],
    ));
  }
}
