import 'package:calculadora_app/components/display.dart';
import 'package:calculadora_app/components/keyboard.dart';
import 'package:calculadora_app/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String text) {
    setState(() {
      memory.applyCommand(text);
    });
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      home: Column(
        children: [
          Display(text: memory.value),
          Keyboard(cb: _onPressed),
        ],
      ),
    );
  }
}
