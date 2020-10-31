import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context,) {
  return AppBar(
    title: Text('ConvoApp'),
    elevation: 0.0,
    centerTitle: false,
    backgroundColor: Color(0xFFFFF9C4),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black54),

      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54)));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 16 );
}

TextStyle biggerTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 18);
}

