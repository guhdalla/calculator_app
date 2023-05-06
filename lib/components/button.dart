// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 12, 1);

  final String text;
  final Color color;
  final bool big;
  final void Function(String) cb;

  Button({
    Key? key,
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.cb,
  }) : super(key: key);

  Button.big({
    Key? key,
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.cb,
  }) : super(key: key);

  Button.operation({
    Key? key,
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black87,
      backgroundColor: color,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );

    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: raisedButtonStyle,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
