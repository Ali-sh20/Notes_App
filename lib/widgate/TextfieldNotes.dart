import 'package:flutter/material.dart';

class TextFieldNotes extends StatelessWidget {
  TextFieldNotes(
      {required this.colorStyle,
      required this.colorcursor,
      required this.colorBorderSide,
      required this.colorhintText,
      required this.fontSize,
      required this.hintText,
      required this.textEditingController,
      required this.textInputType});

  final Color colorStyle;
  final Color colorcursor;
  final Color colorhintText;
  final Color colorBorderSide;
  final double fontSize;
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: textInputType,
      style: TextStyle(
        color: colorStyle,
      ),
      cursorColor: colorcursor,
      enabled: true,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorBorderSide)),
        hintText: hintText,
        hintStyle: TextStyle(color: colorhintText, fontSize: fontSize),
      ),
    );
  }
}
