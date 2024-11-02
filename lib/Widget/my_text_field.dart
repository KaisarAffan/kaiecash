import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String labelText;
  final InputBorder border;
  TextInputType? keyboardType;

  MyTextField(
      {super.key,
      required this.textEditingController,
      required this.labelText,
      this.keyboardType,
      required this.border});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: labelText,
          border: border,
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
